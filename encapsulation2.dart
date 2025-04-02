import 'bankAccount2.dart';

void main(){
  BackAccount backAccount=BackAccount("kabir", 2000);


  //this two finding for (get funtion) other wise we can't find private variable 
  print("Account holder name is : ${backAccount.accountHolder}");
  print("Acount balance is ${backAccount.balance}");



  backAccount.deposit(5000);
  print("After deposit your balance is : ${backAccount.balance}");  // update by setter function 
  backAccount.withdraw(3000); 
  print("After withdraw your balance is : ${backAccount.balance}"); // also get function to get balnce


}