module largeAdder(
    wire switch0,
    wire switch1,
    wire switch2,
    wire switch3,
    wire button0,
    wire button1,
    wire button2,
    wire button3,
    wire led4,
    wire led5,
    wire led6,
    wire led7,
    wire redLed0
);

wire carryOver1;
wire sum1;
wire sum2;
wire carryOver2;

wire x0;
wire notX0;
wire y0;
wire notY0;
wire x1;
wire notX1;
wire y1;
wire notY1;

wire control;

wire firstBitAdderX;
wire firstBitAdderY;
wire secondBitAdderX;
wire secondBitAdderY;

assign x0 = switch0;
assign y0 = switch2;
assign x1 = switch1;
assign y1 = switch3;
assign control = button0;

assign notX0 = ~x0;
assign notY0 = ~y0;
assign notX1 = ~x1;
assign notY1 = ~y1;

mux(x0, notX0, control, firstBitAdderX);
mux(y0, notY0, control, firstBitAdderY);
mux(x1, notX1, control, secondBitAdderX);
mux(y1, notY1, control, secondBitAdderY);

adder firstBitAdder (firstBitAdderX, firstBitAdderY, control, sum1, carryOver1);
adder secondBitAdder (secondBitAdderX, secondBitAdderY, carryOver1, sum2, carryOver2);

assign led4 = sum1;
assign led5 = sum2;
assign led7 = carryOver2;

endmodule
