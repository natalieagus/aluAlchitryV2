/*
    This file was generated automatically by Alchitry Labs 2.0.18-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/
module edge_detector #(
    parameter RISE = 1'h1,
    parameter FALL = 1'h1
  ) (
    input clk,
    input in,
    output reg out
  );
  
  reg D_last_d, D_last_q = 0;
  
  
  
  always @* begin
    D_last_d = D_last_q;
    
    out = 1'h0;
    D_last_d = in;
    if (RISE) begin
      if (in == 1'h1 && D_last_q == 1'h0) begin
        out = 1'h1;
      end
    end
    if (FALL) begin
      if (in == 1'h0 && D_last_q == 1'h1) begin
        out = 1'h1;
      end
    end
  end
  
  always @(posedge (clk)) begin
    D_last_q <= D_last_d;
    
  end
endmodule