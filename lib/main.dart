import 'package:flutter/material.dart';
import 'screens/home.dart';
import 'screens/tela_cadastro_aluno.dart';
import 'screens/tela_cadastro_curso.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Teste Flutter Jr.',
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home: const Home(),
      routes: {
        'home_screen': (context) => const Home(),
        'cadastro_alunos': (context) => TelaCadastroAluno(),
        'cadastro_cursos': (context) => TelaCadastroCurso(),
      },
    );
  }
}
