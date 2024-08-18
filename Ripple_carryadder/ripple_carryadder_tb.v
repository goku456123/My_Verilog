module ripple_carryadder_tb;

  reg [3:0] a;
  reg [3:0] b;
  reg cin;
  wire [3:0] sum;
  wire cout;
  
  ripple_carryadder ra(.a(a), .b(b), .cin(cin), .sum(sum), .cout(cout));
  
  initial begin
    $monitor("time=%0t | a=%b | b=%b | cin=%b | sum=%b | cout=%b", $time, a, b, cin, sum, cout);
    
    a = 4'b0000; b = 4'b0001; cin = 1'b0; #10;
    a = 4'b0010; b = 4'b0011; cin = 1'b0; #10;
    a = 4'b0100; b = 4'b0101; cin = 1'b0; #10;
    a = 4'b0110; b = 4'b0111; cin = 1'b0; #10;
    a = 4'b1000; b = 4'b1001; cin = 1'b1; #10;
    
    $finish;
  end
  
  initial begin
    $dumpfile("ripple_carryadder.vcd");
    $dumpvars(0, ripple_carryadder_tb);
  end
  
endmodule
