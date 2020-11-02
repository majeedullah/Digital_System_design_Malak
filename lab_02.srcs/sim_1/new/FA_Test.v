module FullAdder_test();
reg A, B, Cin;
wire Carry, Sum;

// signals
initial
begin
    #00 Cin = 0; B = 0; A = 0;
    #10 Cin = 0; B = 0; A = 1;
    #10 Cin = 0; B = 1; A = 0;
    #10 Cin = 0; B = 1; A = 1;
    #10 Cin = 1; B = 0; A = 0;
    #10 Cin = 1; B = 0; A = 1;
    #10 Cin = 1; B = 1; A = 0;
    #10 Cin = 1; B = 1; A = 1;
    #20 $stop;

end

// Instiation
FA_using_HAs FA1(Sum, Carry, A, B, Cin);

endmodule