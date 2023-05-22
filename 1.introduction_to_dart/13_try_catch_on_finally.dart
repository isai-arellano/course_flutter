void main() async{
  
  print('Inicio del programa');
  
  try{
    final value = await httpGet('https:isai-arellano.com/cursos');
    print('200: $value');
  } on Exception catch(err) {
    print('Tenemos una Exception: $err');
  }  
  catch(err){
    print('Tenemos un error: $err');
  }
  finally{
    print('Fin del try y catch');
  }
  
  
  
  print('Fin del programa');
}

Future<String> httpGet(String url) async {
  
  await Future.delayed(const Duration(seconds: 1));
  
  throw Exception('No hay parámetros en la URL');
  
  //throw'Error en le petición';
  
  //return 'Tenemos un valor de la petición HTTP';
  
}