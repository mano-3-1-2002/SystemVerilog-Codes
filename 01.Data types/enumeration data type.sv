module enum_example();
  enum{CARROT,BRINJAL,ONION,POTATO,TOMATO}veg_e;
  initial begin
    veg_e = ONION;#3
    veg_e = CARROT;
  end
  initial begin
    $monitor("Element is %s and its value is %0d",veg_e.name(),veg_e);
  end
endmodule


/*OUTPUT:
 Element is ONION and its value is 2
 Element is CARROT and its value is 0 */
