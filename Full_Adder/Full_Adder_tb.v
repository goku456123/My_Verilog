module full_adder_tb;
  
  reg a, b, c;
  wire sum, cout;
  
  full_adder fa(.a(a), .b(b), .c(c), .sum(sum), .cout(cout));
  
  initial begin
    a = 0; b = 0; c = 0; #20;
    a = 0; b = 0; c = 1; #20;
    a = 0; b = 1; c = 0; #20;
    a = 0; b = 1; c = 1; #20;
    a = 1; b = 0; c = 0; #20;
    a = 1; b = 0; c = 1; #20;
    a = 1; b = 1; c = 0; #20;
    a = 1; b = 1; c = 1; #20;
  end
  
  
  always @(a, b, c) begin
    $display("time=%0t a=%b b=%b c=%b sum=%b cout=%b", $time, a, b, c, sum, cout);
  end
  
  initial begin
    $dumpfile("full_adder.vcd");  
    $dumpvars(0, full_adder_tb); 
  end
  
endmodule
