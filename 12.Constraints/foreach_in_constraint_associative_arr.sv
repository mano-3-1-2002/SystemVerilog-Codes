
typedef enum{LOW,MID,HIGH}level;
class as_ar;
  rand bit [4:0] arr[level] ;
  constraint c0{arr.size()==3;}
  constraint c{foreach(arr[i]){(i==LOW) -> arr[i]<9;
                               (i==MID) -> arr[i] >9&& arr[i] < 20;
                               (i==HIGH) -> arr[i] > 20;}}
endclass
module init;
  as_ar a;
  initial begin
    a = new();
    repeat(3)begin
    a.randomize();
      foreach(a.arr[i])
        $display("arr[%s]=%0d",i.name(),a.arr[i]);
    end
  end  
endmodule
/*OUTPUT
arr[LOW]=8
arr[MID]=12
arr[HIGH]=31
arr[LOW]=2
arr[MID]=19
arr[HIGH]=22
arr[LOW]=4
arr[MID]=17
arr[HIGH]=31
*/

