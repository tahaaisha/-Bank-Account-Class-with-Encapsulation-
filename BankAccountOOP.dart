class BankAccount {
  String _accountNumber;
  String _holderName;
  double _balance;

  BankAccount(this._accountNumber, this._holderName, this._balance);

  String get accountnumber => _accountNumber;
  String get holdername => _holderName;
  double get balance => _balance;

  set holdername(String name) {
    _holderName = name;
  }

  set balance(double balance) {
    if (balance >= 0) {
      balance = _balance;
    } else {
      print(' balance cant be zero');
    }
  }

  void deposite(double amount) {
    if (amount > 0) {
      _balance += amount;
      print('deposite:$amount');
    } else {
      print('Deposite must be positive');
    }
  }

  void withdraw(double amount) {
    if (amount > 0 && amount <= _balance) {
      _balance = _balance - amount;
      print('Withdraw:${amount.toStringAsFixed(2)}');
    } else if (amount > _balance) {
      print('balance not enoght to withdraw this amount');
    } else {
      print('withdraw amount must be positive');
    }
  }

  void DisplayAccountinfo() {
    print(
        'Account Number: $_accountNumber,\n holder name :$_holderName,balance:${_balance.toStringAsFixed(2)}');
  }
}

void main() {
  BankAccount account1 = BankAccount('1234', 'aisha taha', 600);
  BankAccount account2 = BankAccount('8890', 'hend ali', 2009.55);

  account1.DisplayAccountinfo();
  account2.DisplayAccountinfo();

  account1.deposite(876.8);
  account2.deposite(999);

  account1.withdraw(234);
  account2.withdraw(5555);

  account1.DisplayAccountinfo();
  account2.DisplayAccountinfo();
}
