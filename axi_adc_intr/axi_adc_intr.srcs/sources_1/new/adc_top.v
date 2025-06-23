module adc_sampler #(
    parameter SAMPLE_MAX = 8'd125
)(
    //--- clock & reset ---
    input  wire        clk,
    input  wire        rst_n,          // asynchronous, active-low

    //--- serial data in ---
    input  wire        din1,
    input  wire        din2,


    //--- status / control out ---
    output reg         cs_n,
    output wire        clk_5_12M,

    //--- captured data out (last 16-bit sample from each ADC) ---
    output wire [1:0]  intr_sw,
    output wire [31:0] data_out
);
    reg done, ready;
    
    //===============================================================
    // Internal declarations
    //===============================================================
    // State encoding
    localparam [2:0]   AIDLE              = 3'd0,
                       SAMPLE             = 3'd1,
                       CHECK_SAMPLE_COUNT = 3'd2,
                       WAIT_1             = 3'd3,
                       WAIT_2             = 3'd4,
                       COMP_AVERAGE       = 3'd5,
                       DONE               = 3'd6;

    reg  [2:0] astate, nastate;

    // bit counter for one 16-bit conversion
    reg  [3:0] bit_count;

    // sample counter for 128 conversions
    reg  [8:0] sample_counter;
    
    
    wire locked;
    reg [15:0]  adc1_data;
    reg [15:0]  adc2_data;
    
    assign  adc1_data_o = ^adc1_data;
    assign  adc2_data_o = ^adc2_data;
    
    reg [11:0] average_value_adc1;
    reg [11:0] average_value_adc2;
    

    
/*    
ila_0 your_instance_name (
	.clk(clk), // input wire clk
	.probe0(clk_1K), // input wire [0:0]  probe0  
	.probe1(din2), // input wire [0:0]  probe1 
	.probe2(clk_5_12M), // input wire [0:0]  probe2 
	.probe3(done), // input wire [0:0]  probe3 
	.probe4(adc1_data), // input wire [15:0]  probe4 
	.probe5(adc1_data), // input wire [15:0]  probe5 
	.probe6(average_value_adc1), // input wire [11:0]  probe6 
	.probe7(average_value_adc2), // input wire [11:0]  probe7
	.probe8(total_value_adc1), // input wire [20:0]  probe8 
	.probe9(total_value_adc2) // input wire [20:0]  probe9
);
*/




assign  clk_5_12M = clk;
    //1KHz square wave generator (clk_1K)
    reg [12:0] counter = 0;  // Enough bits to count to 5120 (2^13 = 8192)
    reg clk_1K;
    always @(posedge clk_5_12M or negedge rst_n) begin
        if (!rst_n) begin
            counter <= 0;
            clk_1K  <= 0;
        end
        else if (counter == 2500) begin
                counter <= 0;
                clk_1K  <= ~clk_1K;  // Toggle output clock
        end else begin
                counter <= counter + 1;
        end
end

assign intr_sw[1]  = clk_1K;
assign intr_sw[0]  = ~clk_1K;


    //===============================================================
    // Shift-register data capture (16 clock cycles)
    //===============================================================
    always @(posedge clk_5_12M or negedge rst_n) begin
        if (!rst_n) begin
            bit_count  <= 4'd0;
            adc1_data  <= 16'h0000;
            adc2_data  <= 16'h0000;
        end
        else if (astate == SAMPLE && bit_count <= 4'd15) begin
            bit_count  <= bit_count + 1'b1;
            adc1_data  <= {adc1_data[14:0], din1};
            adc2_data  <= {adc2_data[14:0], din2};
        end
        else if (astate != SAMPLE) begin
            bit_count <= 4'd0;
        end
    end

    //===============================================================
    // Sample counter (counts 0-->127 conversions)
    //===============================================================
   /* always @(posedge clk_5_12M or negedge rst_n) begin
        if (!rst_n)
            sample_counter <= 8'd0;
        else if (astate == CHECK_SAMPLE_COUNT && bit_count == 4'd15)
            sample_counter <= sample_counter + 1'b1;
        else if (astate == DONE)
            sample_counter <= 8'd0;
    end*/
    
     always @(posedge clk_5_12M or negedge rst_n) begin
        if (!rst_n)
            sample_counter <= 8'd0;
        else if (astate == 2'b01 && bit_count == 4'd14)
            sample_counter <= sample_counter + 1'b1;
        else if (astate == DONE)
            sample_counter <= 8'd0;
    end
    //===============================================================
    // FSM - state register
    //===============================================================
    always @(posedge clk_5_12M or negedge rst_n) begin
        if (!rst_n)
            astate <= AIDLE;
        else
            astate <= nastate;
    end

    //===============================================================
    // FSM - next-state logic
    //===============================================================
    always @(*) begin
        // default stay-put
        nastate = astate;

        case (astate)
            //--------------------------------------------------
            AIDLE : begin
                    nastate = SAMPLE;
            end
            //--------------------------------------------------
            SAMPLE : begin
                if (bit_count == 4'd15)
                    nastate = CHECK_SAMPLE_COUNT;
            end
            //--------------------------------------------------
            CHECK_SAMPLE_COUNT : begin
                if (sample_counter != SAMPLE_MAX)
                    nastate = WAIT_1;
                else
                    nastate = COMP_AVERAGE;
            end
            //--------------------------------------------------
            WAIT_1 : nastate = WAIT_2;
            WAIT_2 : nastate = AIDLE;
            //--------------------------------------------------
            COMP_AVERAGE : nastate = DONE;
            DONE         : nastate = AIDLE;
            //--------------------------------------------------
            default : nastate = AIDLE;
        endcase
    end

    //===============================================================
    // Output logic (Moore)
    //===============================================================
    always @(*) begin
        // safe defaults
        cs_n  = 1'b1;
        ready = 1'b1;
        done  = 1'b0;

        case (astate)
            AIDLE : begin
                cs_n  = 1'b1;
                ready = 1'b1;
                done  = 1'b0;
            end

            SAMPLE : begin
                cs_n  = 1'b0;   // chip-select asserted
                ready = 1'b0;
                done  = 1'b0;
            end

            CHECK_SAMPLE_COUNT,
            WAIT_1,
            WAIT_2,
            COMP_AVERAGE : begin
                cs_n  = 1'b1;
                ready = 1'b0;
                done  = 1'b0;
            end

            DONE : begin
                cs_n  = 1'b1;
                ready = 1'b1;
                done  = 1'b1;   // one-cycle "done" pulse
            end
        endcase
    end
    
    
    
    
reg [20:0] total_value_adc1;
reg [20:0] total_value_adc2;
always@(posedge clk_5_12M or negedge rst_n) 
begin
        if(!rst_n)
            begin
            total_value_adc1 <= 0;
            total_value_adc2 <= 0;
            end
        else if (astate == CHECK_SAMPLE_COUNT && sample_counter != 125 )  ///sample gen finish
            begin
            total_value_adc1 <= total_value_adc1 + adc1_data[11:0];  ///keep on adding until we add up all 128
            total_value_adc2 <= total_value_adc2 + adc2_data[11:0];  ///keep on adding until we add up all 128
            end
        else if (astate == CHECK_SAMPLE_COUNT && sample_counter == 125 )  ///sample gen finish
            begin
            total_value_adc1   <= total_value_adc1 + adc1_data[11:0] * 4;
            total_value_adc2   <= total_value_adc2 + adc2_data[11:0] * 4;         
            end
       else if (done == 1'b1)
            begin
            total_value_adc1 <= 0;
            total_value_adc2 <= 0;
            end
end
  

always@(posedge clk_5_12M or negedge rst_n) 
begin
        if(!rst_n)
            begin
            average_value_adc1 <= 0;
            average_value_adc2 <= 0;
            end
        else if (astate == COMP_AVERAGE)  ////reset sum once average is ready
            begin
            average_value_adc1 <= (total_value_adc1 >> 6);
            average_value_adc2 <= (total_value_adc2 >> 6);
            end
        
end

    wire [31:0] d1,d2;
    assign d1 = {8'h20,4'h0,average_value_adc1,8'h31};
    assign d2 = {8'h20,4'h0,average_value_adc2,8'h32};
    assign data_out = (clk_1K == 1'b1) ? d1 : d2;

endmodule

