/*
    This file was generated automatically by Alchitry Labs 2.0.11-PREVIEW.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/
module MI_leftShifter (
    input [31:0] P_a,
    input [4:0] P_b,
    input P_pad,
    output reg [31:0] P_shl
  );
  
  
  
  reg [31:0] M_shifter16_a;
  reg M_shifter16_doShift;
  reg M_shifter16_pad;
  wire [31:0] M_shifter16_out;
  MI_xBitLeftShifter_302e7480 shifter16 (
    .P_a(M_shifter16_a),
    .P_doShift(M_shifter16_doShift),
    .P_pad(M_shifter16_pad),
    .P_out(M_shifter16_out)
  );
  reg [31:0] M_shifter8_a;
  reg M_shifter8_doShift;
  reg M_shifter8_pad;
  wire [31:0] M_shifter8_out;
  MI_xBitLeftShifter_9c52b671 shifter8 (
    .P_a(M_shifter8_a),
    .P_doShift(M_shifter8_doShift),
    .P_pad(M_shifter8_pad),
    .P_out(M_shifter8_out)
  );
  reg [31:0] M_shifter4_a;
  reg M_shifter4_doShift;
  reg M_shifter4_pad;
  wire [31:0] M_shifter4_out;
  MI_xBitLeftShifter_b895f260 shifter4 (
    .P_a(M_shifter4_a),
    .P_doShift(M_shifter4_doShift),
    .P_pad(M_shifter4_pad),
    .P_out(M_shifter4_out)
  );
  reg [31:0] M_shifter2_a;
  reg M_shifter2_doShift;
  reg M_shifter2_pad;
  wire [31:0] M_shifter2_out;
  MI_xBitLeftShifter_c13fc91 shifter2 (
    .P_a(M_shifter2_a),
    .P_doShift(M_shifter2_doShift),
    .P_pad(M_shifter2_pad),
    .P_out(M_shifter2_out)
  );
  reg [31:0] M_shifter1_a;
  reg M_shifter1_doShift;
  reg M_shifter1_pad;
  wire [31:0] M_shifter1_out;
  MI_xBitLeftShifter_4ce8fa1 shifter1 (
    .P_a(M_shifter1_a),
    .P_doShift(M_shifter1_doShift),
    .P_pad(M_shifter1_pad),
    .P_out(M_shifter1_out)
  );
  
  always @* begin
    M_shifter16_pad = P_pad;
    M_shifter8_pad = P_pad;
    M_shifter4_pad = P_pad;
    M_shifter2_pad = P_pad;
    M_shifter1_pad = P_pad;
    M_shifter16_a = P_a;
    M_shifter16_doShift = P_b[(3'h4)];
    M_shifter8_a = M_shifter16_out;
    M_shifter8_doShift = P_b[(2'h3)];
    M_shifter4_a = M_shifter8_out;
    M_shifter4_doShift = P_b[(2'h2)];
    M_shifter2_a = M_shifter4_out;
    M_shifter2_doShift = P_b[(1'h1)];
    M_shifter1_a = M_shifter2_out;
    M_shifter1_doShift = P_b[(1'h0)];
    P_shl = M_shifter1_out;
  end
  
endmodule