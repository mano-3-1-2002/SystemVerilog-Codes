class sample;
  static int s_count;
  static function increment();
    s_count++;
  endfunction
endclass
module stat;
  sample s1[7];
  initial begin
    foreach(s1[i])begin
      s1[i]=new();
      s1[i].increment();
      $display("arr[%0d] = %0d",i,s1[i].s_count);
    end
  end
endmodule
/*output
arr[0] = 1
arr[1] = 2
arr[2] = 3
arr[3] = 4
arr[4] = 5
arr[5] = 6
arr[6] = 7
*/
