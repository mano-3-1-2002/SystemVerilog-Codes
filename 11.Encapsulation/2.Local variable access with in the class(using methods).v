class person;
  local int age;
  string name;
  function new();
    this.age = 45;
    this.name = "alex";
  endfunction
  function void display();
    $display("%0d,%s",age,name);
  endfunction
    
endclass

module test_person;
      person p ;
  initial begin
	p= new();
    p.display();
    //$display("%0d,%s",p.age,p.name); Local member 'age' of class 'person' is not visible to scope 'test_person'. 
    
  end
endmodule


/*OUTPUT
45,alex
*/
