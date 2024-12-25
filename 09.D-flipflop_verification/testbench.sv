`include "interface.sv"
`include "test.sv"
module testbench;
  intf intff();
  test tst(intff);
  dff d1(.d(intff.d),.rst(intff.rst),.clk(intff.clk),.q(intff.q));
  initial begin
    intff.rst= 1;intff.clk=1;
    #5;intff.rst= 0;
    #80;$finish;
  end
  always #2 intff.clk = ~intff.clk;
  initial begin
    $monitor("%0t,d=%0d,clk=%0d,rst=%0d,q=%0d",$time,intff.d,intff.clk,intff.rst,intff.q);
  end
  
  initial begin
    $dumpfile("dump.vcd"); $dumpvars;
    
    
  end
endmodule
  
    
