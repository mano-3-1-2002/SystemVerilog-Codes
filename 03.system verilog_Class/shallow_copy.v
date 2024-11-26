class addr_range;
  bit[31:0] start_address;
  bit[31:0] end_address;
  function new();
    start_address = 30;
    end_address = 50;
  endfunction
endclass

class packet;
  bit[31:0] addr;
  bit[31:0] data;
  addr_range ar;
  function new();
    addr = 10;
    data = 20;
    ar = new();
  endfunction
  function void display();
    $display("addr %0d",addr);
    $display("data %0d",data);
    $display("start_address %0d",ar.start_address);
    $display("end_address %0d",ar.end_address);
  endfunction
endclass

module shallow_copy;
  packet pkt1,pkt2;
  initial begin
    pkt1 = new();
    pkt2 = new pkt1;
    pkt1.display();
    $display ("----------------------");
    pkt2.display();
    pkt2.addr=100;
    pkt2.data=120;
    pkt2.ar.start_address=200;
    pkt2.ar.end_address=220;
    $display("after changing pkt2");
    $display ("----------------------");
    pkt1.display();
    $display ("----------------------");
    pkt2.display();
  end
endmodule

/*
output
addr 10
data 20
start_address 30
end_address 50
----------------------
addr 10
data 20
start_address 30
end_address 50
after changing pkt2
----------------------
addr 10
data 20
start_address 200
end_address 220
----------------------
addr 100
data 120
start_address 200
end_address 220
*/
             
    
