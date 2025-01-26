class BankAccount;
   
   local string account_number;
   local real balance;
   protected string account_type;
  
   function new(string acc_num, string acc_type, real initial_balance);
      account_number = acc_num;
      account_type = acc_type;
      balance = initial_balance;
   endfunction
   function void deposit(real amount);
      balance += amount;
   endfunction
   function void withdraw(real amount);
      if (amount <= balance)
         balance -= amount;
      else
         $error("Insufficient balance!");
   endfunction
   function real get_balance();
      return balance;
   endfunction
   function void display();
      $display("Account Type: %s, Balance: %0f", account_type, balance);
   endfunction
endclass

module test_overall;
   initial begin
      BankAccount ba = new("1234567890", "Savings", 5000.0);
      ba.display(); 

      ba.deposit(2000);
      $display("Balance after deposit: %0f", ba.get_balance());

      ba.withdraw(3000);
      $display("Balance after withdrawal: %0f", ba.get_balance()); 
      ba.withdraw(5000);
   end
endmodule
/*OUTPUT
Account Type: Savings, Balance: 5000.000000
Balance after deposit: 7000.000000
Balance after withdrawal: 4000.000000
Error: "testbench.sv", 19: $unit::\BankAccount::withdraw : at time 0 ns
Insufficient balance!
*/
