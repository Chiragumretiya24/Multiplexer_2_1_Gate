// RTL 2:1 Multiplexer

module multiplexer_2_1(i0,i1,s0,f);

// ---------- Port Declaration ---------- \\
  
  input i0,i1; // input
  input s0; // input
  output f; // output

// ---------- Internal Wires ---------- \\
  
  wire x,y; 

// ---------- Implementation ---------- \\
 
  and and_1(x,~s0,i0); //1st AND gate output
  and and_2(y,s0,i1); //2nd AND gate ouput
  or or_0(f,x,y); //both AND gate output is given to OR gate for final output

endmodule
