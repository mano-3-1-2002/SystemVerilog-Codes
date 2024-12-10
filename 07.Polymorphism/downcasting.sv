class Base;
  function void show();
    $display("Base class");
  endfunction
endclass

class derived extends Base;
  function void show();
    $display("Derived class");
  endfunction
  function void extraFeature();
    $display("Derived class specific feature");
  endfunction
endclass

module test;
  initial begin
    Base b;
    derived d = new();
    b = d;
    $cast(d,b);
    d.show;
    d.extraFeature;
    b.show;
  end
endmodule
/*OUTPUT
Derived class
Derived class specific feature
Base class
*/
