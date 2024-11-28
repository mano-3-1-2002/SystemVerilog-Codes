`include "interface.sv"
`include "test.sv"
module add_tb;
  addtest test;
  mailbox mail;
  operation intf();
  add dut(.a(intf.a),.b(intf.b),.c(intf.c));
  initial begin
    mail = new();
    test = new(intf,mail);
    fork
      test.memory;
      test.run;
    join
  end
  initial begin
    $monitor("time=%0t,a=%0d,b=%0d,c=%0d",$time,intf.a,intf.b,intf.c);#200;
    $finish;
    
  end
endmodule
