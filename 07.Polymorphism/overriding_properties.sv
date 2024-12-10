class packet;
  int a;
  int b;
  function void display();
    $display("baseclass:%0d,%0d",a,b);
  endfunction
endclass
class child_packet extends packet;
  //int a;
  //int b;
  function void display();
    $display("child class:%0d,%0d",a,b);
  endfunction
endclass
module class_example;
  initial begin
    packet p;
    child_packet c = new();
    p = c;
    p.a = 10;
    p.b = 20;
    p.display;
    $display("after over riding");
    c.a = 30;
    c.b = 40;
    p.display;
    c.display;
  end
endmodule

/*OUTPUT
baseclass:10,20
after over riding
baseclass:30,40
child class:30,40
*/
