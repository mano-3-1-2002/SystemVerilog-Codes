class person;
  local int age;
  string name;
  function new();
    this.age = 45;
    this.name = "alex";
  endfunction
endclass
class details extends person;
    
  function void display();
    $display("%0d,%s",age,name);
  endfunction

endclass

module test_person;
      details d ;
  initial begin
	d= new();
    d.display();
  
    
  end
endmodule


/*OUTPUT
Local member 'age' of class 'person' is not visible to scope 'details'.
*/
