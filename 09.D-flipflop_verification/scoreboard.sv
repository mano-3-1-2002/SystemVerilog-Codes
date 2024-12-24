class scoreboard;
  transaction trans;
  mailbox mon2scb;
  function new(mailbox mon2scb);
    this.mon2scb = mon2scb;
  endfunction
  task main();
    repeat(5)
      begin
        mon2scb.get(trans);
       
        if(!trans.rst&&trans.q==trans.d)
          $display("pass");
        else if(trans.rst&&trans.q==0)
          $display("pass");
        else
          $display("fail");
      end
  endtask
endclass
    
