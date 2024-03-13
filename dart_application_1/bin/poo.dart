void main(){
  String nome = 'Laranja';  
  double peso = 100.2; //gramas  
  String corFruta = 'Verde e Amarela';
  String sabor = 'Doce e cítrica';
  int diasDesdeColheita = 40;
  bool isMadura;

  Fruta fruta1 = Fruta(nome, peso, corFruta, sabor, diasDesdeColheita);
  Fruta fruta2 = Fruta('Uva', 40, 'Roxa', 'Doce', 20);

  fruta1.estaMadura(15);
  fruta2.estaMadura(60);

}

mostrarMadura(String nome, int dias, {String? cor, double peso = 100}){
  if (dias >= 30) {
    print('A $nome está madura.');
  } else {
    print('A $nome não está madura.');
  }
  if (cor !=null) {
    print('A $nome é $cor');
  }
}

class Alimento {
  String nome;
  double peso;
  String cor;

  Alimento(this.nome, this.peso, this.cor);

  void printAlimento(){
    print('Este(a) $nome, pesa $peso gramas e é $cor');
  }

}

class Legumes extends Alimento {
  bool isPrecisaCozinhar;

  Legumes(String nome, double peso, String cor, this.isPrecisaCozinhar):super(nome, peso, cor);

  void cozinhar(){
    if (isPrecisaCozinhar) {
      print('Pronto, $nome está cozinhando.');     
    } else {
      print('Nem precisa cozinhar');
    }
  }

}

class Fruta extends Alimento {
  String sabor;
  int diasDesdeColheita;
  bool? isMadura;

  Fruta(String nome, double peso, String cor, this.sabor, this.diasDesdeColheita, {this.isMadura}):super(nome, peso, cor);

  estaMadura(int diasParaMadura){
    isMadura = diasDesdeColheita >= diasParaMadura;
    print('A sua $nome, foi colhia a $diasDesdeColheita dias,' 
          'e precisa de $diasParaMadura para poder comer. Ela está madura? $isMadura');
  }
}

