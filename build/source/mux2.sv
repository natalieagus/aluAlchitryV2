/*
    This file was generated automatically by Alchitry Labs 2.0.19-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module mux2 (
        input wire s0,
        input wire [1:0] in,
        output reg out
    );
    
    
    
    
    always @* begin
        out = in[1'h0];
        
        case (s0)
            1'h0: begin
                out = in[1'h0];
            end
            1'h1: begin
                out = in[1'h1];
            end
        endcase
    end
    
endmodule