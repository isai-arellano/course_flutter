void main() async{
  
  print('Inicio del programa');
  
  try{
    final value = await httpGet('https:isai-arellano.com/cursos');
  print(value);
  
  }catch(err){
    print('Tenemos un error: $err');
  }
  
  
  
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw'Error en le petición';
  
  //return 'Tenemos un valor de la petición HTTP';
  
}