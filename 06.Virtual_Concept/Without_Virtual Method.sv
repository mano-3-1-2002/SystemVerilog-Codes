class packet;
  integer i = 1;
  function integer init();
    init = i;
  endfunction
endclass
class child_packet extends packet;
  integer i = 2;
  function integer init();
    init = -i;
  endfunction
endclass

module class_example;
  initial begin
  int j;
  child_packet c1 = new();
  packet p1 = c1;
  j=p1.init();
    $display("%0d",j);
  $display("%0d",p1.i);
  end
  
endmodule
  
/*OUTPUT
1
1
*/
