import 'package:app/infra/sqlite.dart';

class ClienteRepository {
  void buscar() async {
    final sqlite = SqliteConnection();
    final connection = await sqlite.db();
    List<Map<String, Object?>> usuarios = await connection
      .query(
        'users',
        where: 'nome is not null and valor > ? and valor < ?',
        whereArgs: [10, 20],
        columns: ['id', 'nome']);

    for (final usuario in usuarios){
      int id = int.parse(usuario['id'].toString());
      String nome = usuario['nome'].toString();
      double valor = double.parse(usuario['valor'].toString());
    }
  }

  Future<void> salvar(String nome, String documento, String telefone, String email) async {
    final sqlite = SqliteConnection();
    final connection = await sqlite.db();
    
    await connection.insert('clientes', {
      'nome': nome,
      'documento': documento,
      'telefone': telefone,
      'email': email
    });
  }

  void atualizar() async {
    int id = 1;
    String nome = 'Josnei';
    double valor = 10;

    final sqlite = SqliteConnection();
    final connection = await sqlite.db();
    
    await connection.update('users', {
      'nome': nome,
      'valor': valor
    },where: 'id = 1' );
  }

  void deletar() async {
    final sqlite = SqliteConnection();
    final connection = await sqlite.db();
    await connection.delete('users', where: 'id = 1');
  }
}