module half_adder(
  input a,
  input b,
  output sum,
  output cout
);
  assign sum = a ^ b;
  assign cout = a & b;
endmodule

module full_adder(
  input a,
  input b,
  input cin,
  output sum,
  output cout
);
  wire sumha1, carryha1, carryha0;

  half_adder ha1(.a(a), .b(b), .sum(sumha1), .cout(carryha1));
  half_adder ha0(.a(sumha1), .b(cin), .sum(sum), .cout(carryha0));

  assign cout = carryha1 | carryha0;
endmodule
