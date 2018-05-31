module mox(
        wire inputLine,
        wire invert
    );
    
    assign inputLine = inputLine ^ invert;
    
endmodule
