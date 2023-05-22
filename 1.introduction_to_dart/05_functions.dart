void main(){
  print(greetEveryone());
  print('Suma: ${addTwoNumbers(10, 20)}');
  print( greetPerson(name: 'Isai',message: 'Hi'));
}

String greetEveryone() => 'Hello everyone!';
/*
 String greetEveryone(){
  return 'Hello everyone!'
 }
 */

int addTwoNumbers(int a, int b) => a+b;

/*int addTwoNumbers(int a,int b) {
  return a + b;
}*/

int addTwoNumbersOptional(int a,[int b = 0]) {
  
 // b = b ?? 0;
  
  return a+b;
}

String greetPerson({ required String name,String message = 'Hola'}){
  
  return '$message, Isai';
  
}