
void main(List<String> arguments) {
  print('Carregando informações do usuário');
  consultarUsuario().then((usuario) {
    //Sucesso
    print(usuario.nome);
    print(usuario.email);
    print('Informações do usuário consultadas com sucesso');
  }).catchError((value){
    //Erro
    print('Erro ao consultar usuário');
  });
  
}

//Sucesso
Future<Usuario> consultarUsuario(){
  return Future.delayed(
    Duration(seconds: 10),
   () => Usuario('Arthur Miranda', 'arthur@fiap.com'),
  );
}

// //Erro
// Future<Usuario> consultarUsuario(){
//   return Future.delayed(
//     Duration(seconds: 10),
//    () => throw Exception(),
//   );
// }

class Usuario{
  String nome;
  String email;

  Usuario(this.nome, this.email);
}