module sequential_circuit (A,B,C,O, clk , reset);

input A,B,C;
input clk,reset;
output O;

// Declaring Interm Wire
wire X;
wire Y;

reg Flop;

assign X = A | B;
assign Y = X & C;

// / Always block

always@(posedge clk or posedge reset)
begin
    if(reset == 1'b1)
        begin
          Flop <= 1'B0;
        end
    else
        begin
      Flop <= Y;

        end    
end

assign O = Flop; 



endmodule