class Packet;
   local int src_addr;
   local int dest_addr;
   local byte data;
   function new(int src, int dest, byte data_in);
      src_addr = src;
      dest_addr = dest;
      data = data_in;
   endfunction
   function void set_src_addr(int src);
      src_addr = src;
   endfunction
   function int get_src_addr();
      return src_addr;
   endfunction

   function void set_dest_addr(int dest);
      dest_addr = dest;
   endfunction
   function int get_dest_addr();
      return dest_addr;
   endfunction
   function void display();
      $display("Packet Details: Source = %0d, Destination = %0d, Data = %0h", 
               src_addr, dest_addr, data);
   endfunction
endclass

module test_encapsulation;
   initial begin

      Packet pkt = new(10, 20, 8'hAB); 
      pkt.display();
     
      pkt.set_src_addr(30);
      $display("Updated Source Address: %0d", pkt.get_src_addr()); 
      
      pkt.set_dest_addr(40);
      pkt.display(); 
   end
endmodule

/*OUTPUT

Packet Details: Source = 10, Destination = 20, Data = ab
Updated Source Address: 30
Packet Details: Source = 30, Destination = 40, Data = ab
*/
