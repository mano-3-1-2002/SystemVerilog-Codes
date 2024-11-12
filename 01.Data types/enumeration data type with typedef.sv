module enum_example();
  typedef enum {CARROT,BRINJAL,ONION,POTATO,TOMATO}veg_e;
  veg_e veg1,veg2,veg3;
  initial begin
    veg1 = ONION;
    veg2 = CARROT;
    veg3 = TOMATO;
    $display("veg1=%s,veg2=%0d,veg3=%s",veg1.name(),veg2,veg3.name());
  end
endmodule

/*output:
veg1=ONION,veg2=0,veg3=TOMATO
*/
