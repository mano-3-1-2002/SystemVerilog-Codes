`include "environment.sv"
class addtest;
  environment envir;
  mailbox mail;
  virtual operation virint;
  function new(virtual operation virint,mailbox mail);
    this.virint = virint;
    this.mail = mail;
  endfunction
  task memory;
    mail = new();
    envir = new(virint,mail);
  endtask
  task run;
    fork
      envir.memory;
      envir.run;
    join
  endtask
endclass
