class bikes;
  virtual function brand;
    $display("bike_brand");
  endfunction
  virtual task features;
    $display("model_colour");
  endtask
endclass

class yamaha extends bikes;
  function brand;
    $display("yamaha");
  endfunction
  task features;
    $display("R15,red");
  endtask
endclass

class ktm extends bikes;
  function brand;
    $display("ktm");
  endfunction
  task features;
    $display("duke,orange");
  endtask
endclass

class scooter extends yamaha;
  function brand;
    $display("yamaha");
  endfunction
  task features;
    $display("rayzr,yellow");
  endtask
endclass
module polymorphism;
  initial begin
    bikes b1,b2;
    yamaha y = new();
    ktm k = new();
    scooter s = new();
    b1 = y;
    b2 = k;
    y = s;
    b1.brand;
    b1.features;
    b2.brand;
    b2.features;
    y.brand;
    y.features;
  end
endmodule

/*OUTPUT
yamaha
R15,red
ktm
duke,orange
yamaha
rayzr,yellow
*/
    
    
  
