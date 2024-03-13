import 'dart:io';

void main() {
  print('Qual sua idade?');
  String? input = stdin.readLineSync();
  if (input != null) {
    int idade = int.parse(input);
    print("Sua idade ano que vem será ${idade + 1} anos.");    
  } else{
    print('Não foi possível calcular o valor da idade');
  }
  print(input);
}