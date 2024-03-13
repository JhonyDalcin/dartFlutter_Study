void main() {
  
  Pessoa dandara = Pessoa('Dandara', 25, true);
  Map<String,dynamic> pessoaMap = dandara.toMap();
  print(pessoaMap);
  print(pessoaMap['nome']);
  print(pessoaMap['idade']);
  print(pessoaMap['estaAutenticada']);

}

class Pessoa{
  String nome;
  int idade;
  bool estaAutenticada;

  Pessoa(this.nome, this.idade, this.estaAutenticada);

  Map<String,dynamic> toMap(){
    return{
      'nome': nome,
      'idade': idade,
      'estaAutenticada': estaAutenticada,
    };
    /* Método didático que utilizei quando aprendi, o que está implementado é o mais clean
    Map<String,dynamic> pessoaMap = {};
    pessoaMap['nome'] = nome;
    pessoaMap['idade'] = idade;
    pessoaMap['estaAutenticada'] = estaAutenticada; 
    return pessoaMap;*/
  }

  }