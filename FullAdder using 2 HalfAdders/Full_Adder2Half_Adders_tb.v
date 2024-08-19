module full_adder2half_adder_tb;
  reg a, b, cin;
  wire sum, cout;

  full_adder ha(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));

  initial begin

    a = 0; b = 0; cin = 0; #10;
    a = 0; b = 0; cin = 1; #10;
    a = 0; b = 1; cin = 0; #10;
    a = 0; b = 1; cin = 1; #10;
    a = 1; b = 0; cin = 0; #10;
    a = 1; b = 0; cin = 1; #10;
    a = 1; b = 1; cin = 0; #10;
    a = 1; b = 1; cin = 1; #10;
  end
  
  initial begin
   
    $monitor("time=%0t, a=%b, b=%b, cin=%b, sum=%b, cout=%b", $time, a, b, cin, sum, cout);

   
    $dumpfile("full_adder.vcd");
    $dumpvars(0, full_adder2half_adder_tb);
  end
endmodule
