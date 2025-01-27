class person;
  local int age;
  string name;
  function new(int age,string name);
    this.age = age;
    this.name = name;
  endfunction
  
endclass

module test_person;
      person p ;
  initial begin
	p= new(45,"alex");
    $display("%0d,%s",p.age,p.name);
  end
endmodule

/* OUTPUT
Error-[SV-ICVA-L] Illegal class variable access
testbench.sv, 15
  Local member 'age' of class 'person' is not visible to scope 'test_person'.
  */
  
