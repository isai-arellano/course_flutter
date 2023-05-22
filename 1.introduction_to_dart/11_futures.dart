void main(){
  
  print('Inicio del programa');
  
  
  httpGet('https:isai-arellano.com/cursos').then((value){
    print(value);
    })
    .catchError((err){
    print('Error: $err');
  });
  
  
  print('Fin del programa');
}

Future<String> httpGet(String url){
  return Future.delayed( Duration(seconds: 1), () {
    
    throw 'Error en la petición HTTP';
    //return 'Respuesta de la petición http';
  });
}