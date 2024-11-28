class driver;
  transaction pkt;
  mailbox mail;
  virtual operation virint;
  function new(virtual operation virint,mailbox mail);
    this.virint = virint;
    this.mail = mail;
  endfunction
  task drive;
    repeat(10)begin
      pkt=new();
      mail.get(pkt);
      virint.a = pkt.a;
      virint.b = pkt.b;
      
      $display("dtime=%0t",$time);
      pkt.c = virint.c;
    end
  endtask
endclass
      
