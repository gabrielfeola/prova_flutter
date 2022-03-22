import 'package:flutter/material.dart';
import 'package:flutter_vr/database/postgres.dart';

class TelaCadastroAluno extends StatefulWidget {
  TelaCadastroAluno({Key? key}) : super(key: key);

  @override
  State<TelaCadastroAluno> createState() => _TelaCadastroAlunoState();
}

class _TelaCadastroAlunoState extends State<TelaCadastroAluno> {
  final addController = TextEditingController();

  late List listaAlunos = [connection.showData()];

  var connection = ConnectDB();

  void addAluno() {
    setState(() {
      Map<String, dynamic> novoAluno = Map();
      novoAluno['title'] = addController.text;
      addController.text = '';
      listaAlunos.add(novoAluno);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.orangeAccent,
        title: const Text(
          'Cadastro Aluno',
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
                        labelText: 'Novo Aluno',
                        labelStyle: TextStyle(color: Colors.orangeAccent),
                      ),
                      controller: addController,
                    ),
                  ),
                  ElevatedButton(
                    onPressed: () {
                      connection.showData();
                      addAluno();
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
              itemCount: listaAlunos.length,
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text(
                    listaAlunos.toString(),
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
