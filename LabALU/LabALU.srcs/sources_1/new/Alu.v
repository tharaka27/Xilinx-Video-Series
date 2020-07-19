`timescale 1ns / 1ps

module Alu #(parameter NUM_BITS=8)(
    input [NUM_BITS-1:0] A,
    input [NUM_BITS-1:0] B,
    output reg [NUM_BITS-1:0] C,
    input [2:0] op
    );
    

    always @(*)
    begin
        case(op)
            0: C = A + B;
            1: C = A - B;
            2: C = A * B;
            3: C = A & B;
            4: C = A | B;
            5: C = A ^ B;
            6: C = A << 1;
            7: C = A >> 1;
            default: C = A;
        endcase
    end
   
 
endmodule
