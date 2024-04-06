// 2:1 Mux TB

module multiplexer_2_1_tb();

  reg i0,i1;
  reg s0;
  wire x,y,f;
  
  multiplexer_2_1 dut(.i0(i0),.i1(i1),.s0(s0),.f(f));

  initial begin
      
  $monitor($time,"i0 = %b, i1 = %b, s0 = %b, f = %b",i0,i1,s0,f);
  
  i0 = 1; i1 = 0; s0 = 0;
  #5;
  i0 = 0; i1 = 1; s0 = 1;
  #5;
  $finish;
  end
endmodule

