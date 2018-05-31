module mux(
    wire x,
    wire y,
    wire control,
    wire z
);

assign z = ~control & x & ~y | control & ~x & y;

endmodule
