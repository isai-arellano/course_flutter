void main(){
  final wolwerine = Hero(name: 'Logan', power: 'Regeneración');
  final wolwerine1 = Hero(name: 'Logan');
  
  print(wolwerine.name);
  print(wolwerine.power);
  
  print(wolwerine1.name);
  print(wolwerine1.power);
}

class Hero {
  String name;
  String power;
  
  Hero({
    required this.name,
    this.power = 'Sin poder'
  });
  
  //Forma de Constructor 2
  /*Hero(this.name,this.power);*/
  
  //Forma de Constructor 1
  /*Hero( String pName, String pPower) 
    : name = pName,
      power = pPower;
  */
 
  @override
  String toString(){
    return '$name - $power';
  }
  
  
}