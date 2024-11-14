module queue_methods;
  int q1[$]={1,2,3,4,5};
  int i;
  initial begin
    $display("size of the queue is %0d",q1.size());
    $display("initial data in queue q1=%p",q1);
    q1.insert(2,80);
    $display("result of queue after inserted 80 at 2nd index is q1=%p",q1);
    q1.push_front(10);
    $display("push_front method q1 = %p",q1);
    q1.push_back(80);
    $display("push_back method q1=%p",q1);
    q1.push_back(90);
    $display("push_back method q1=%p",q1);
    i=q1.pop_front();
    $display("pop_front method value of i=%0d and q1=%p",i,q1);
    i=q1.pop_back();
    $display("pop_back method value of i=%0d and q1=%p",i,q1);
    q1.delete(5);
    $display("after deleting the 5th index,value of queue is q1=%p",q1);
    q1.delete();
    $display("after deleting all the elements in queue is q1=%p",q1);
  end
endmodule

/*output
size of the queue is 5
initial data in queue q1='{1, 2, 3, 4, 5}
result of queue after inserted 80 at 2nd index is q1='{1, 2, 80, 3, 4, 5}
push_front method q1 = '{10, 1, 2, 80, 3, 4, 5}
push_back method q1='{10, 1, 2, 80, 3, 4, 5, 80}
push_back method q1='{10, 1, 2, 80, 3, 4, 5, 80, 90}
pop_front method value of i=10 and q1='{1, 2, 80, 3, 4, 5, 80, 90}
pop_back method value of i=90 and q1='{1, 2, 80, 3, 4, 5, 80}
after deleting the 5th index,value of queue is q1='{1, 2, 80, 3, 4, 80}
after deleting all the elements in queue is q1='{}
*/
