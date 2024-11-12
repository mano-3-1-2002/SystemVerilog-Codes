module str_methods();
  string a = "HELLO";
  string b = "world";
  string c = "hello";
  string d = "world";
  initial begin
    $display("size of a string is %d",a.len());
    $display("1st character of a string a is %s",a.getc(1));
    $display("string a in lowercase %s",a.tolower());
    $display("string b in uppercase %s",b.toupper());
    $display("case sensitive comparision between b and d %d",b.compare(d));
    $display("case insensitive comparision between a and c %d",a.icompare(c));
    $display("substring of d is %s",d.substr(1,3));
    
  end
endmodule

/*output:
size of a string is           5
1st character of a string a is E
string a in lowercase hello
string b in uppercase WORLD
case sensitive comparision between b and d     0
case insensitive comparision between a and c   0
substring of d is orl
*/
