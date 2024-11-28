`include "transaction.sv"
`include "generator.sv"
`include "driver.sv"
`include "monitor.sv"
class environment;
  virtual operation virint;
  mailbox mail;
  generator gen;
  driver drive;
  monitor monit;
  function new(virtual operation virint,mailbox mail);
    this.virint=virint;
    this.mail=mail;
  endfunction
  task memory;
    mail=new();
    gen=new(mail);
    drive=new(virint,mail);monit=new(virint,mail);
  endtask
  task run;
    fork
      gen.gen;
      drive.drive;
      monit.monit;
    join
  endtask
endclass
