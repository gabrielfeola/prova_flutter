import 'package:flutter/material.dart';
import 'package:flutter_vr/database/postgres.dart';

class TelaCadastroCurso extends StatefulWidget {
  TelaCadastroCurso({Key? key}) : super(key: key);

  @override
  State<TelaCadastroCurso> createState() => _TelaCadastroCursoState();
}

class _TelaCadastroCursoState extends State<TelaCadastroCurso> {
  final addController = TextEditingController();

  late List listaCursos = [connection.showData()];

  var connection = ConnectDB();

  void addCurso() {
    setState(() {
      Map<String, dynamic> novoCurso = Map();
      novoCurso['title'] = addController.text;
      addController.text = '';
      listaCursos.add(novoCurso);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          'Cadastro Curso',
          style: TextStyle(
              fontSize: 30, fontWeight: FontWeight.bold, color: Colors.white),
        ),
        elevation: 0.0,
      ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.fromLTRB(17, 1, 7, 1),
            child: SafeArea(
              child: Row(
                children: [
                  Expanded(
                    child: TextField(
                      decoration: const InputDecoration(
                        labelText: 'Novo Curso',
                        labelStyle: TextStyle(color: Colors.orangeAccent),
                      ),
                      controller: addController,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      connection.showData();
                      addCurso();
                    },
                    child: const Text('Adicionar'),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            child: ListView.builder(
              padding: const EdgeInsets.only(top: 15),
              itemCount: listaCursos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    listaCursos.toString(),
                  ),
                  trailing: TextButton(
                    child: const Icon(
                      Icons.delete,
                      color: Colors.grey,
                    ),
                    onPressed: () {},
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}
