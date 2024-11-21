class sample;
  static int s_count;
  int count;
  function new();
    s_count++;
    count++;
  endfunction
endclass
module class_example;
  sample s1[7];
  sample s2[7];
  initial begin
    foreach (s1[i])begin
      s1[i] = new();
      $display("value of s_count[%0d]=%0d",i,s1[i].s_count,i);
    end
    foreach(s2[i])begin
      s2[i] = new();
      $display("value of count[%0d]=%0d",i,s2[i].count);
    end
  end
endmodule

/*OUTPUT
value of s_count[0]=1          0
value of s_count[1]=2          1
value of s_count[2]=3          2
value of s_count[3]=4          3
value of s_count[4]=5          4
value of s_count[5]=6          5
value of s_count[6]=7          6
value of count[0]=1
value of count[1]=1
value of count[2]=1
value of count[3]=1
value of count[4]=1
value of count[5]=1
value of count[6]=1
*/
