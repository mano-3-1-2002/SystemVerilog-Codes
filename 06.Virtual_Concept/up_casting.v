// Code your design here
class Base;
    virtual function void display();
        $display("Base class display");
    endfunction
endclass

class Derived extends Base;
    function void display();
        $display("Derived class display");
    endfunction
endclass

module test;
    initial begin
        Derived d = new();
        Base b = d;   //up_casting
        b.display(); 
    end
endmodule

/*OUTPUT
Derived class display
*/
