void main() {
  escolherMeioTransporte(Transporte.skate);
  
  List<String> teste = [];

  Set<String> destinosVisitados = <String>{};
  destinosVisitados = registrarDestino('São Paulo', destinosVisitados);

  Map<String,dynamic> precoPassagnes = {};
  precoPassagnes['São Paulo'] = 1200;
  precoPassagnes['Curitiba'] = 800;
  print(precoPassagnes);
  print(precoPassagnes['Curitiba']);
  precoPassagnes.remove('São Paulo');
  print(precoPassagnes);
  precoPassagnes['Nova York'] = 'muito caro';
  print(precoPassagnes);


}

Set<String> registrarDestino(String destino, Set<String> destinos){
  destinos.add(destino);
  return destinos;
}

void escolherMeioTransporte(Transporte locomocao){
  switch (locomocao) {
    case Transporte.carro:
      print('Vou de CARRO para aventura');
      break;
    default:
    print('Vou para uma aventura!');
  }
}

enum Transporte{
  carro,
  bicicleta,
  onibus,
  aviao,
  andando,
  helicoptero,
  patins,
  skate,
}

