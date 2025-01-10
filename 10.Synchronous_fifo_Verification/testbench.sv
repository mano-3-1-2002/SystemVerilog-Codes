
`include "interface.sv"
`include "environment.sv"
module tb;

    
  environment env;
  fifo_if fif();

  fifo dut (fif.clock, fif.rst, fif.wr, fif.rd, fif.data_in, fif.data_out, fif.empty, fif.full);

    

  initial begin

    fif.clock <= 0;

  end

    

  always #10 fif.clock <= ~fif.clock;

    

  initial begin

    env = new(fif);

    env.gen.count = 10;

    env.run();

  end

    

  initial begin

    $dumpfile("fifo.vcd");

    $dumpvars;

  end

   

endmodule
