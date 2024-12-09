virtual class bikes;
  string brand_name;
  string model;
  string colour;
  virtual function void brand();
  endfunction
  virtual task features();
  endtask
endclass

class yamaha extends bikes;
  // Override brand function
  function void brand();
    this.brand_name = "yamaha";
    $display("%s",brand_name);
  endfunction

  // Override features task
  task features();
    this.model = "R15"; 
    this.colour = "RED";
    $display("%s, %s",model,colour);
  endtask
endclass

class yamaha_2 extends bikes;
  // Override brand function
  function void brand();
    this.brand_name = "yamaha";
    $display("%s",brand_name);
  endfunction

  // Override features task
  task features();
    this.model = "MT15"; 
    this.colour = "BLACK";
    $display("%s, %s",model,colour);
  endtask
endclass

module class_example;
  initial begin
    yamaha y1 = new();
    yamaha_2 y2 = new();
    
    // Call methods on objects
    y1.brand();
    y2.brand();
    y1.features();
    y2.features();
    
  end
endmodule
/*OUTPUT
yamaha
yamaha
R15, RED
MT15, BLACK
*/
