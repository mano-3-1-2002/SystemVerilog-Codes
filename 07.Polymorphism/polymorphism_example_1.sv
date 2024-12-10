class animal;
  virtual function void sound;
    $display("animal sound");
  endfunction
endclass
class dog extends animal;
  function void sound;
    $display("dog barks");
  endfunction
endclass
class cat extends animal;
  function void sound;
    $display("cat meows");
  endfunction
endclass

module polymorphism;
  initial begin
    animal a1,a2;
    dog d;
    cat c;
    d = new();
    c = new();
    a1 = d;
    a2 = c;
    a1.sound;
    a2.sound;
  end
endmodule

/*OUTPUT
dog barks
cat meows
*/
