/*
    This file was generated automatically by Alchitry Labs 2.0.18-BETA.
    Do not edit this file directly. Instead edit the original Lucid source.
    This is a temporary file and any changes made to it will be destroyed.
*/
module button_conditioner #(
    parameter CLK_FREQ = 27'h5f5e100,
    parameter MIN_DELAY = 5'h14,
    parameter NUM_SYNC = 2'h2
  ) (
    input clk,
    input in,
    output reg out
  );
  
  reg [($clog2(CLK_FREQ * MIN_DELAY / 10'h3e8))-1:0] D_ctr_d, D_ctr_q = 0;
  
  
  localparam _MP_DEPTH_1015271864 = NUM_SYNC;
  reg M_sync_in;
  wire M_sync_out;
  
  pipeline #(
    .DEPTH(_MP_DEPTH_1015271864)
  ) sync (
    .clk(clk),
    .in(M_sync_in),
    .out(M_sync_out)
  );
  
  
  always @* begin
    D_ctr_d = D_ctr_q;
    
    M_sync_in = in;
    out = (&D_ctr_q);
    if (!(&D_ctr_q)) begin
      D_ctr_d = D_ctr_q + 1'h1;
    end
    if (!M_sync_out) begin
      D_ctr_d = 1'h0;
    end
  end
  
  always @(posedge (clk)) begin
    D_ctr_q <= D_ctr_d;
    
  end
endmodule