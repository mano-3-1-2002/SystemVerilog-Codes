class transaction;
  rand bit oper;
  bit rd,wr;
  bit full,empty;
  bit[7:0] din;
  reg[7:0] dout;
  bit reset;
  bit clk;
  
  constraint open_ctrl{oper dist{1:/50,0:/50};}
endclass
  
