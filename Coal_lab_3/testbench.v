module tb();

reg A,B,C ,reset;
reg clk = 0;

wire O;


sequential_circuit dut (
                    .clk(clk),
                    .reset(reset),
                    .A(A),
                    .B(B),
                    .C(C),
                    .O(O)

);

always begin
  clk <= ~clk;
  #5;


end
initial begin
  reset <= 1'b1;
  #10;
  reset <= 1'b0;

  A<= 1'b0;
  B<= 1'b0;
  C<= 1'b0;
  #10;

  A<= 1'b0;
  B<= 1'b1;
  C<= 1'b1;
  #10;
  $finish;



end
initial begin
  $dumpfile("dump.vcd");
  $dumpvars(0);

end





endmodule
// iverilog -o out.vpp testbench.v design.v
// vvp out.vpp
// gtkwave dump.vcd
 
