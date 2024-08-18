module ripple_fulladder(
  input a, b,
  input cin,
  output sum,
  output cout
);
  
  assign sum = a ^ b ^ cin;
  assign cout = (a & b) | (cin & (a ^ b));
  
endmodule


module ripple_carryadder(
  input [3:0] a,
  input [3:0] b,
  input cin, 
  output [3:0] sum,
  output cout
);
  
  wire ra23, ra12, ra01;
  
  ripple_fulladder ra0(.a(a[0]), .b(b[0]), .cin(cin), .sum(sum[0]), .cout(ra01));
  ripple_fulladder ra1(.a(a[1]), .b(b[1]), .cin(ra01), .sum(sum[1]), .cout(ra12));
  ripple_fulladder ra2(.a(a[2]), .b(b[2]), .cin(ra12), .sum(sum[2]), .cout(ra23));
  ripple_fulladder ra3(.a(a[3]), .b(b[3]), .cin(ra23), .sum(sum[3]), .cout(cout));
  
endmodule
