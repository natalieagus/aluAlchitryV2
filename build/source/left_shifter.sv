/*
    This file was generated automatically by Alchitry Labs 2.0.18-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/
module left_shifter (
    input [(32)-1:0] a,
    input [(5)-1:0] b,
    input pad,
    output reg [(32)-1:0] shl
  );
  
  
  
  localparam _MP_SHIFT_1939186291 = 5'h10;
  localparam _MP_SIZE_1939186291 = 6'h20;
  reg [(32)-1:0] M_shifter16_a;
  reg M_shifter16_do_shift;
  reg M_shifter16_pad;
  wire [(32)-1:0] M_shifter16_out;
  
  x_bit_left_shifter #(
    .SHIFT(_MP_SHIFT_1939186291),
    .SIZE(_MP_SIZE_1939186291)
  ) shifter16 (
    .a(M_shifter16_a),
    .do_shift(M_shifter16_do_shift),
    .pad(M_shifter16_pad),
    .out(M_shifter16_out)
  );
  
  localparam _MP_SHIFT_521396639 = 4'h8;
  localparam _MP_SIZE_521396639 = 6'h20;
  reg [(32)-1:0] M_shifter8_a;
  reg M_shifter8_do_shift;
  reg M_shifter8_pad;
  wire [(32)-1:0] M_shifter8_out;
  
  x_bit_left_shifter #(
    .SHIFT(_MP_SHIFT_521396639),
    .SIZE(_MP_SIZE_521396639)
  ) shifter8 (
    .a(M_shifter8_a),
    .do_shift(M_shifter8_do_shift),
    .pad(M_shifter8_pad),
    .out(M_shifter8_out)
  );
  
  localparam _MP_SHIFT_445511008 = 3'h4;
  localparam _MP_SIZE_445511008 = 6'h20;
  reg [(32)-1:0] M_shifter4_a;
  reg M_shifter4_do_shift;
  reg M_shifter4_pad;
  wire [(32)-1:0] M_shifter4_out;
  
  x_bit_left_shifter #(
    .SHIFT(_MP_SHIFT_445511008),
    .SIZE(_MP_SIZE_445511008)
  ) shifter4 (
    .a(M_shifter4_a),
    .do_shift(M_shifter4_do_shift),
    .pad(M_shifter4_pad),
    .out(M_shifter4_out)
  );
  
  localparam _MP_SHIFT_1154828920 = 2'h2;
  localparam _MP_SIZE_1154828920 = 6'h20;
  reg [(32)-1:0] M_shifter2_a;
  reg M_shifter2_do_shift;
  reg M_shifter2_pad;
  wire [(32)-1:0] M_shifter2_out;
  
  x_bit_left_shifter #(
    .SHIFT(_MP_SHIFT_1154828920),
    .SIZE(_MP_SIZE_1154828920)
  ) shifter2 (
    .a(M_shifter2_a),
    .do_shift(M_shifter2_do_shift),
    .pad(M_shifter2_pad),
    .out(M_shifter2_out)
  );
  
  localparam _MP_SHIFT_2041833666 = 1'h1;
  localparam _MP_SIZE_2041833666 = 6'h20;
  reg [(32)-1:0] M_shifter1_a;
  reg M_shifter1_do_shift;
  reg M_shifter1_pad;
  wire [(32)-1:0] M_shifter1_out;
  
  x_bit_left_shifter #(
    .SHIFT(_MP_SHIFT_2041833666),
    .SIZE(_MP_SIZE_2041833666)
  ) shifter1 (
    .a(M_shifter1_a),
    .do_shift(M_shifter1_do_shift),
    .pad(M_shifter1_pad),
    .out(M_shifter1_out)
  );
  
  
  always @* begin
    M_shifter16_pad = pad;
    M_shifter8_pad = pad;
    M_shifter4_pad = pad;
    M_shifter2_pad = pad;
    M_shifter1_pad = pad;
    M_shifter16_a = a;
    M_shifter16_do_shift = b[(3'h4)];
    M_shifter8_a = M_shifter16_out;
    M_shifter8_do_shift = b[(2'h3)];
    M_shifter4_a = M_shifter8_out;
    M_shifter4_do_shift = b[(2'h2)];
    M_shifter2_a = M_shifter4_out;
    M_shifter2_do_shift = b[(1'h1)];
    M_shifter1_a = M_shifter2_out;
    M_shifter1_do_shift = b[(1'h0)];
    shl = M_shifter1_out;
  end
  
endmodule