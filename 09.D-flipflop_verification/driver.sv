class driver;
  transaction trans;
  virtual intf vif;
  mailbox gen2drv;
  function new(virtual intf vif,mailbox gen2drv);
    this.vif = vif;
    this.gen2drv = gen2drv;
  endfunction
  
  task main();
    
    repeat(5)
      begin
        gen2drv.get(trans);
        vif.rst<=trans.rst;
        vif.clk<=trans.clk;
        vif.d<=trans.d;#3;
        vif.q<= trans.q;
        #2;
      end
  endtask
endclass
        
    
