module associative_array_methods();
  bit[7:0]array[int];
  int key;
  initial begin
    array = '{7:2,10:4,2:6,9:8,30:10,13:12,5:10};
    $display("elements are = %p",array);
    $display("total elements using num method = %0d",array.num());
    $display("total elements using size method = %0d",array.size());
    array.first(key);
    $display("first element of array = %0d",key);
    array.last(key);
    $display("last element of array =%0d",key);
    array.prev(key);
    $display("previous element of last element is %0d",key);
    key=9;
    array.next(key);
    $display("next ekwment of 9 is %0d",key);
    if(array.exists(5))
      $display("an element exists at index 5");
    else
      $display("an element not exists at index 5");
    array.delete(13);
    $display("elements are = %p",array);
    array.delete();
    $display("size %0d",array.size());
  end
endmodule


/*OUTPUT
elements are = '{2:6, 5:10, 7:2, 9:8, 10:4, 13:12, 30:10}
total elements using num method = 7
total elements using size method = 7
first element of array = 2
last element of array =30
previous element of last element is 13
next ekwment of 9 is 10
an element exists at index 5
ements are = '{2:6, 5:10, 7:2, 9:8, 10:4, 30:10}
size 0
*/
    
