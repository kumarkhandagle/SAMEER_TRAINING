
module uarttx
(
input clk,rst_n,
input newd,
input fifo_empty,
input [7:0] fifo_in,
output reg pop_data,
output reg tx,
output reg donetx
);


parameter clk_freq = 100000000;
parameter baud_rate = 115200;   
localparam clkcount = (clk_freq/baud_rate); ///x
  
integer count = 0;
reg uclk = 0;
 ///////////uart_clock_gen
  always@(posedge clk)
    begin
      if(count < clkcount/2)
        count <= count + 1;
      else begin
        count <= 0;
        uclk <= ~uclk;
      end 
end
  




integer counts = 0;
 


parameter idle = 0,
          start = 1,
          transfer = 2,
          get_data_from_fifo = 3,
          done     = 4;
          
reg [2:0] state;


  
  reg [7:0] din;
  ////////////////////Reset decoder
  
  
  always@(posedge uclk)
    begin
      if(rst_n == 1'b0) 
      begin
        state <= idle;
      end
     else
     begin
     case(state)
       idle:
         begin
           counts <= 0;
           tx     <= 1'b1;
           donetx <= 1'b0;
           pop_data <= 0; 
           if(start== 1'b1 & fifo_empty == 1'b0)
             state <= get_data_from_fifo;
           else
             state <= idle;
         end
         
         get_data_from_fifo: begin
             din       <= fifo_in;
             pop_data <= 1;  
             state     <= transfer; 
         end
         
      
      transfer: begin
         pop_data <= 0; 
        if(counts <= 7) begin
           counts <= counts + 1;
           tx <= din[counts];
           state <= transfer;
        end
        else 
        begin
           counts <= 0;
           tx <= 1'b1;
           state <= idle;
          donetx <= 1'b1;
        end
      end
      
     
      default : state <= idle;
    endcase
  end
end
 
endmodule
 
 
 