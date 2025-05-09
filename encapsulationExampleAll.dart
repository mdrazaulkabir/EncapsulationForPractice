
/*Example 1:In this example below, there is a class named Student with 
three private properties _firstName, _lastName and _age. There are two 
getters fullName and age to get the value of the properties. There are
also three setters firstName, lastName and age to update the value of
the properties. If age is less than 0, it will throw an error.
*/

// class Student{
//   String? _firstName;
//   String? _lastName;
//   int? _age;

//   get firstName=>_firstName;
//   get lastName=>_lastName;
     ////get Name=>{print("your full name is $_firstName $_lastName")};
//   get age=>_age;

//   void setAll(String firstName, String lastName, int age){
//     _firstName=firstName;
//     //this._firstName=firstName; //this two line is same 
//     _lastName=lastName;
//     // this._lastName=lastName;
//     if(age>0){
//       _age=age;
//     }
//     else{print("There is error because age not will be less then zero!");}
    
//   }
// }
// void main(){
//   Student student=Student();
//   student.setAll("Razaul", "kabir", 23);

//   print("Full name is ${student.firstName} ${student.lastName}");
     ////student.Name; //when you call the get Name
//   print("your updated age is ${student.age}");
// }

/*Example 2: Getter And Setter In Dart
In this example below, there is a class named BankAccount with one private 
property _balance. There is one getter balance to read the value of the property. 
There are methods deposit and withdraw to update the value of the _balance.
*/

//solution 1
// class BankAccount{
//   double? _balance;
//   BankAccount(this._balance);
//   get balance=>_balance;
//   void setDeposit(double? balance){
//     _balance= _balance!+balance!;
//   }
//   void setWithdraw(double balance){
//     _balance=_balance!-balance;
//   }
// }
// void main(){
//   BankAccount bankAccount=BankAccount(23);
//   bankAccount.setDeposit(100);
//   print("Deposit ${bankAccount.balance}");
//   bankAccount.setWithdraw(50);
//   print("Withdraw ${bankAccount.balance}");
// }



//solution2:
import 'dart:io';
class BankAccount{
  double _balance=0;
  get balance=>_balance;
  void setDeposit(double balance){
    _balance +=balance;
    print("Successfully deposit $balance tk!");
  }
  void setWithdraw(double balance){
    if(_balance<balance){
      print("Your accont not enough of money! You need fist deposit money!");
      return;
    }
    else{
      _balance -=balance;
      print("Successfully withdraw $balance tk!");
      return;
    }
  }
}

void main(){
  BankAccount bankAccount=BankAccount();
  print("Your acount total money is ${bankAccount.balance}tk");

  print("\nHow much you want to deposit!");
  double money=double.parse(stdin.readLineSync()!);
  bankAccount.setDeposit(money);
  print("Your account total money ${bankAccount.balance}tk");

  print("\nHow much you want to withdraw money!");
  double moneyWithdraw=double.parse(stdin.readLineSync()!);
  bankAccount.setWithdraw(moneyWithdraw);
  print('After withdraw your acoount money ${bankAccount.balance}tk');
}

