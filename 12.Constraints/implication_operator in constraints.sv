class if_const;
  rand bit[3:0] val1;
  randc enum{high,low} val2;
  
  constraint c1{ (val2 == high) -> val1 < 5;}
endclass
module tst;
  if_const c;
  initial begin
    c=new();
    repeat(5)
      begin
        c.randomize();
        $display("%t,%0s,%0d",$time,c.val2.name(),c.val1);
      end
  end
endmodule

/*
OUTPUT
# KERNEL:                    0,low,5
# KERNEL:                    0,high,4
# KERNEL:                    0,high,0
# KERNEL:                    0,low,12
# KERNEL:                    0,low,15

*/


      
