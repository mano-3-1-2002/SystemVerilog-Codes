class monitor;
  transaction trans;
  virtual intf vif;
  mailbox mon2scb;
  function new(virtual intf vif,mailbox mon2scb);
    this.vif = vif;
    this.mon2scb = mon2scb;
  endfunction
  task main();
    repeat(5)
      begin
        trans = new();
        trans.rst = vif.rst;
        trans.clk = vif.clk;
        trans.d = vif.d;
        trans.q = vif.q;
        mon2scb.put(trans);
        $display("trans is received from DUT");
      end
  endtask
endclass
        
