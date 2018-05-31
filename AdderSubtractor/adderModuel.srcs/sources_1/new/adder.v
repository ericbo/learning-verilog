module adder (wire input1, wire input2, wire cin, wire sum, wire cout);

assign sum = ~input1 & ~input2 & cin | ~input1 & input2 & ~cin | input1 & ~input2 & ~cin | input1 & input2 & cin;
assign cout = ~input1 & input2 & cin | input1 & ~input2 & cin | input1 & input2 & ~cin | input1 & input2 & cin;

endmodule