class generator;
  transaction pkt;
  mailbox mail;
  function new(mailbox mail);
    this.mail = mail;
  endfunction
  task gen;
    repeat(10) begin 
      pkt = new();
      pkt.randomize();
      mail.put(pkt); #50;
      $display("gtime=%0t",$time);
    end
  endtask 
endclass 

