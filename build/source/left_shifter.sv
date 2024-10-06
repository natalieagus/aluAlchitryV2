/*
    This file was generated automatically by Alchitry Labs 2.0.19-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/

module left_shifter (
        input wire [31:0] a,
        input wire [4:0] b,
        input wire pad,
        output reg [31:0] shl
    );
    
    
    
    localparam _MP_SHIFT_274833015 = 5'h10;
    localparam _MP_SIZE_274833015 = 6'h20;
    logic [31:0] M_shifter16_a;
    logic M_shifter16_do_shift;
    logic M_shifter16_pad;
    logic [31:0] M_shifter16_out;
    
    x_bit_left_shifter #(
        .SHIFT(_MP_SHIFT_274833015),
        .SIZE(_MP_SIZE_274833015)
    ) shifter16 (
        .a(M_shifter16_a),
        .do_shift(M_shifter16_do_shift),
        .pad(M_shifter16_pad),
        .out(M_shifter16_out)
    );
    
    localparam _MP_SHIFT_1186110859 = 4'h8;
    localparam _MP_SIZE_1186110859 = 6'h20;
    logic [31:0] M_shifter8_a;
    logic M_shifter8_do_shift;
    logic M_shifter8_pad;
    logic [31:0] M_shifter8_out;
    
    x_bit_left_shifter #(
        .SHIFT(_MP_SHIFT_1186110859),
        .SIZE(_MP_SIZE_1186110859)
    ) shifter8 (
        .a(M_shifter8_a),
        .do_shift(M_shifter8_do_shift),
        .pad(M_shifter8_pad),
        .out(M_shifter8_out)
    );
    
    localparam _MP_SHIFT_1460800974 = 3'h4;
    localparam _MP_SIZE_1460800974 = 6'h20;
    logic [31:0] M_shifter4_a;
    logic M_shifter4_do_shift;
    logic M_shifter4_pad;
    logic [31:0] M_shifter4_out;
    
    x_bit_left_shifter #(
        .SHIFT(_MP_SHIFT_1460800974),
        .SIZE(_MP_SIZE_1460800974)
    ) shifter4 (
        .a(M_shifter4_a),
        .do_shift(M_shifter4_do_shift),
        .pad(M_shifter4_pad),
        .out(M_shifter4_out)
    );
    
    localparam _MP_SHIFT_1268560765 = 2'h2;
    localparam _MP_SIZE_1268560765 = 6'h20;
    logic [31:0] M_shifter2_a;
    logic M_shifter2_do_shift;
    logic M_shifter2_pad;
    logic [31:0] M_shifter2_out;
    
    x_bit_left_shifter #(
        .SHIFT(_MP_SHIFT_1268560765),
        .SIZE(_MP_SIZE_1268560765)
    ) shifter2 (
        .a(M_shifter2_a),
        .do_shift(M_shifter2_do_shift),
        .pad(M_shifter2_pad),
        .out(M_shifter2_out)
    );
    
    localparam _MP_SHIFT_832857705 = 1'h1;
    localparam _MP_SIZE_832857705 = 6'h20;
    logic [31:0] M_shifter1_a;
    logic M_shifter1_do_shift;
    logic M_shifter1_pad;
    logic [31:0] M_shifter1_out;
    
    x_bit_left_shifter #(
        .SHIFT(_MP_SHIFT_832857705),
        .SIZE(_MP_SIZE_832857705)
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
        M_shifter16_do_shift = b[3'h4];
        M_shifter8_a = M_shifter16_out;
        M_shifter8_do_shift = b[2'h3];
        M_shifter4_a = M_shifter8_out;
        M_shifter4_do_shift = b[2'h2];
        M_shifter2_a = M_shifter4_out;
        M_shifter2_do_shift = b[1'h1];
        M_shifter1_a = M_shifter2_out;
        M_shifter1_do_shift = b[1'h0];
        shl = M_shifter1_out;
    end
    
endmodule