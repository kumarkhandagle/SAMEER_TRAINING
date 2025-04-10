`timescale 1ns / 1ps

// FIFO Module

module fifo_top(
    input  wire        rst_n,
    input  wire        clk,
    input  wire        en,
    input  wire        push_in,
    input  wire        pop_in,
    input  wire [7:0]  din,
    output wire [7:0]  dout,
    output wire        empty,
    output wire        full
);

parameter clk_freq = 100000000;
parameter baud_rate = 115200;   
localparam clkcount = (clk_freq/baud_rate); ///x
  
integer count = 0;
reg sclk;

 ///////////uart_clock_gen
always@(posedge clk)
    begin
     if (!rst_n) begin
        count <= 0;
        sclk <= 0;
        end else if(count < clkcount/2)
        count <= count + 1;
        else begin
        count <= 0;
        sclk <= ~sclk;
      end 
end



reg  [7:0] mem [15:0];
reg  [3:0] waddr = 0;
wire       push, pop;

// Empty Flag
reg empty_t = 0;
always @(posedge sclk) begin
    if (rst_n == 1'b0)
        empty_t <= 1'b0;
    else begin
        case ({push, pop})
            2'b01:   empty_t <= (~|(waddr) | ~en);
            2'b10:   empty_t <= 1'b0;
            default: empty_t <= (~|(waddr) | ~en);
        endcase
    end
end

// Full Flag
reg full_t = 0;
always @(posedge sclk ) begin
    if (rst_n == 1'b0)
        full_t <= 1'b0;
    else begin
        case ({push, pop})
            2'b10: full_t <= (&(waddr) | ~en);
            2'b01: full_t <= 1'b0;
            default: full_t <= (&(waddr) | ~en)  ;
        endcase
    end
end

// Push & Pop Enable Logic
assign push = push_in & ~full_t;
assign pop  = pop_in  & ~empty_t;

// FIFO Read Output
assign dout = mem[0];

// Write Pointer Update
always @(posedge sclk ) begin
    if (rst_n == 1'b0)
        waddr <= 4'h0;
    else begin
        case ({push, pop})
            2'b10: if (waddr != 4'hf && !full_t) waddr <= waddr + 1;
            2'b01: if (waddr != 0 && !empty_t)   waddr <= waddr - 1;
            default: ;
        endcase
    end
end

// Memory Update
integer i;
always @(posedge sclk) begin
    if (rst_n == 1'b0) begin
        for (i = 0; i < 16; i = i + 1)
            mem[i] <= 8'h00;
    end
    else begin
        case ({push, pop})
            2'b00: ; // No operation
            2'b01: begin // Pop
                for (i = 0; i < 15; i = i + 1)
                    mem[i] <= mem[i+1];
                mem[15] <= 8'h00;
            end
            2'b10: begin // Push
                mem[waddr] <= din;
            end
            2'b11: begin // Push + Pop
                for (i = 0; i < 15; i = i + 1)
                    mem[i] <= mem[i+1];
                mem[15] <= 8'h00;
                mem[waddr - 1] <= din;
            end
        endcase
    end
end

// Output Assignments
assign empty = empty_t;
assign full  = full_t;

endmodule
