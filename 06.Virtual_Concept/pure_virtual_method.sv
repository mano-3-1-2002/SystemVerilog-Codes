virtual class packet;
  int i;
  pure virtual function void init(int i);
endclass
class child_packet extends packet;
  int i;
  function void init(int i);
    i = -i;
    $display("%d",i);
  endfunction
endclass
    
module class_example;
  initial begin
    child_packet c1 = new();
    c1.init(3);
  end
endmodule
    
/*OUTPUT
-3
*/
