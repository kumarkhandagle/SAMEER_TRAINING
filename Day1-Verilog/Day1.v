/* Modeling Style */
/*
        VDD (Power Supply)
          |
          |
        +-----+
     G  | PMOS|  
        +--+--+
           |
           |------ Y (Output)
           |
        +--+--+
     G  | NMOS|
        +-----+
          |
         GND (Ground)

Gate of PMOS <--- A (Input) ---> Gate of NMOS   
*/
///Switch Level  Modeling
module inverter_switch (
    input  a,
    output y
);
 supply0 low;
 supply1 high;

    // NMOS transistor
    nmos  n1 (y, low, a);
    // PMOS transistor
    pmos  p1 (y, high, a);

endmodule

//// Data Flow Modeling

module gate_level (
    input  a,
    output y
);

assign y = ~a;

endmodule

////// Behavioral Modeling

module behav_level (
    input  wire  a,
    output reg   y
);

always@(*)
begin
  y = ~a;
end

endmodule

//////  Structural Modeling Style

module struct_level (
    input  wire  a,
    output wire   y
);

behav_level not_instance (.a(a), .y(y));

endmodule

///// Combinational & Sequential Circuit
/// Continous assignment - assign, ternary operator
module and_gate (
input  wire a,b,
output wire  y
    );
/// FPGA Design Flow
/// Arithmetic - + .... - * / %
/// Bitwise Logical    - & | ~ ^ ^~  ... two operands
///  Logical           - && || !
/// Reduction          - & | ^ ^~ ... single operands
/// Shift              -  >> <<  .... concat

assign y = a & b;
    
endmodule


module mux (
input  wire a,b,sel,  ///sel = 0, a else b
output wire  y
    );
/// FPGA Design Flow
/// Arithmetic - + .... - * / %
/// Bitwise Logical    - & | ~ ^ ^~  ... two operands
///  Logical           - && || !
/// Reduction          - & | ^ ^~ ... single operands
/// Shift              -  >> <<  .... concat

assign y = (sel == 1'b0) ? a : b; 
    
endmodule

////Procedural assignment
/// comb - *
// seq - clock
/// if else
/// case
/// how verilog runs in parallel
//fsm 

