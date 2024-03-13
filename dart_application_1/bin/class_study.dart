void main(){

  Beverages beverages1 = Beverages('Sprite', 'Coca-Cola', 1000, 0);
  Beer beer1 = Beer('Hopfull', 'Leprechau', 473, 6.75, 50, 'American IPA', 'heavy');

  beverages1.printBeverages();
  beer1.printBeverages();
  beer1.printBeer();
  beer1.howToDrinkIt();
}

class Beverages{
  String name;
  String brand;
  double volume; //mililiters
  double abv; // % o alcahol

  Beverages(this.name, this.brand, this.volume, this.abv);

  printBeverages(){
    print('Beverages name is $name, volume $volume ml and $abv% alcahol. Produced by $brand.');
  }
}

class Beer extends Beverages implements Drink{
  int ibu;
  String style;
  String foam;

  Beer(String name, String brand, double volume, double abv, this.ibu, this.style, this.foam)
  :super(name, brand, volume, abv);

  printBeer(){
    print('The incredibule $name, is the best $style have you ever had! The powerfull of $foam foam and $ibu bitterness will makes you fresh!'
          'Taste it delicious from $brand brewery.');
  }

  @override
  howToDrinkIt() {
    print('Take a clean pint, open the beer and pour into pint. Cheers!Enjoy it!');
  }

}

abstract class Drink{

  howToDrinkIt(){
  }

}