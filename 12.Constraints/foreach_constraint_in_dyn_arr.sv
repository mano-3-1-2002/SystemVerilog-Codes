class data;
  rand int arr[];
  constraint c { arr.size == 5 ;}
  constraint c1 { foreach(arr[i]) { arr[i] == i*2; } }
endclass
    
    
module cls_eg;
  data d1;
  initial begin
    d1 = new();
    d1.randomize();
    foreach (d1.arr[i])begin
      $display("arr[%0d]=%0d",i,d1.arr[i]);
    end
  end
endmodule
    
                 
/*output
arr[0]=0
arr[1]=2
arr[2]=4
arr[3]=6
arr[4]=8
*/
