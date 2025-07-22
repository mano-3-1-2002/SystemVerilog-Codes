class parent_cls;
  int add;
  function void calculation(int a,b);
    
    add = a+b;
    $display("%0d",add);
  endfunction
endclass
class child_cls_1 extends parent_cls;
  int sub;
  function void calculation(int a,b);
    super.calculation(a,b);
    sub = a-b;
    $display("%0b",sub);  
  endfunction
endclass
class child_cls_2 extends child_cls_1;
  int mul;
  function void calculation(int a,b);
    super.calculation(a,b);
    mul = a*b;
    $display("%0d",mul); 
  endfunction
endclass
module tb_top;
  child_cls_2 c2 = new();
  
  initial begin
    c2.calculation(5,7);
  end
endmodule


/*OUTPUT
12
11111111111111111111111111111110
35
*/
