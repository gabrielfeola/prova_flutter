// ignore_for_file: avoid_print, duplicate_ignore

import 'package:postgres/postgres.dart';

// ignore: duplicate_ignore

class ConnectDB {
  Future<PostgreSQLResult> showData() async {
    final conn = PostgreSQLConnection('10.0.2.2', 5432, 'dart_test',
        username: 'postgres', password: 'postgres');
    await conn.open();

    print('Connected to postgres database...');

    var result = await conn.query('SELECT descricao from curso');

    print(result);
    return result;
  }

  Future<List> insertData(String value) async {
    final conn = PostgreSQLConnection('10.0.2.2', 5432, 'dart_test',
        username: 'postgres', password: 'postgres');
    await conn.open();

    print('Connected to postgres database...');

    var result = await conn.query('''
    INSERT INTO curso (descricao)
    VALUES ('$value')
    ''');

    print(result);
    return result;
  }
}

// await conn.query('''
// CREATE TABLE IF NOT EXISTS curso(
//   codigo serial primary key not null,
//   descricao varchar(50),
//   ementa text
// )
// ''');

// await conn.query('''
//   INSERT INTO curso (descricao, ementa)
//   VALUES ('Lógica de Programação','Curso necessário para o aluno desenvolver sua lógica programando.')
// ''');
