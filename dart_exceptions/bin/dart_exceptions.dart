//import 'controllers/bank_controller.dart';
//import 'models/account.dart';

/*void main() {
  // Criando o banco
  BankController bankController = BankController();

  // Adicionando contas
  bankController.addAccount(
      id: "Ricarth",
      account:
          Account(name: "Ricarth Lima", balance: 400, isAuthenticated: true));

  bankController.addAccount(
      id: "Kako",
      account:
          Account(name: "Caio Couto", balance: 600, isAuthenticated: true));

  // Fazendo transferência
  bool result = bankController.makeTransfer(
      idSender: "Kako", idReceiver: "Ricarth", amount: 700);

  // Observando resultado
  print(result);
}*/

void main(List<String> args) {
  print('Started Main');
  functionOne();
  print('Finished Main');
}

void functionOne(){
  print('Started F01');
  try {
    functionTwo();
  } catch (e) {
    print(e);
  }
  print('Finished F01');
}

void functionTwo(){
  print('Starded F02');
  for (int i = 1; i <= 5; i++) {
    print(i);
    double amount = double.parse('Não é um número');
    print(amount);
  }
  print('Finished F02');
}
