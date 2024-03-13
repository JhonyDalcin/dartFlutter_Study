void stackStart(List<String> args) {
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