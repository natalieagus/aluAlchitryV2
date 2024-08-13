/*
    This file was generated automatically by Alchitry Labs 2.0.11-PREVIEW.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/
/*
  Parameters:
      SIZE = {100000} : 32
*/
module MI_adder_782e3138 (
    input [31:0] P_a,
    input [31:0] P_b,
    input [5:0] P_alufnSignal,
    output reg [31:0] P_out,
    output reg P_z,
    output reg P_v,
    output reg P_n
  );
  localparam P_SIZE = 6'h20;
  
  
  reg [31:0] xb;
  
  reg [31:0] M_rca_a;
  reg [31:0] M_rca_b;
  reg M_rca_cin;
  wire M_rca_cout;
  wire [31:0] M_rca_s;
  MI_rca_782e3138 rca (
    .P_a(M_rca_a),
    .P_b(M_rca_b),
    .P_cin(M_rca_cin),
    .P_cout(M_rca_cout),
    .P_s(M_rca_s)
  );
  
  always @* begin
    xb[(1'h0)+31-:32] = P_b ^ {6'h20{P_alufnSignal[(1'h0)]}};
    M_rca_a = P_a;
    M_rca_b = xb;
    M_rca_cin = P_alufnSignal[(1'h0)];
    P_out = M_rca_s;
    P_z = ~(|M_rca_s);
    P_v = (P_a[(7'h1f)] & xb[(7'h1f)] & !M_rca_s[(7'h1f)]) | (!P_a[(7'h1f)] & !xb[(7'h1f)] & M_rca_s[(7'h1f)]);
    P_n = M_rca_s[(7'h1f)];
  end
  
endmodule