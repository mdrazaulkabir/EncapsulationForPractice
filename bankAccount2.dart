class BackAccount{

  String _accountHolder;   //private variable _accountHolder
  double _balance;         //privalte variable _balance

  BackAccount(this._accountHolder,this._balance);

  String get accountHolder=>_accountHolder;     //getter for _accountHolder
  double get balance=>_balance;                 //getter for _balance


  //deposit amount by setter
  void deposit(double amount){
    if(amount>0){
      _balance += amount;
      print('Successfully deposit amount: ${amount.toStringAsFixed(2)}');
    }
    else{print('Invalid or insufficient amount for deposit! ');}
  }


  //withdraw amount by getter
  void withdraw(double amount){
    if(amount>0&&amount <= _balance){
      _balance -= amount;
      print("Successfully withdraw amount: ${amount.toStringAsFixed(2)}");
    }
    else{
      print("Invalid or insufficient  amount for withdraw! ");
    }

  }


}