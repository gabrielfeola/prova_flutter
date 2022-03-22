import 'package:flutter/material.dart';
import 'package:flutter_vr/widgets/buttons.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.orangeAccent,
            title: const Text(
              'Cadastros Escolares',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.white),
            ),
            elevation: 0.0,
          ),
          backgroundColor: Colors.grey[300],
          body: Center(
            child: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                children: <Widget>[
                  Container(
                    child: const Padding(
                      padding: EdgeInsets.all(20),
                      child: Text(
                        'Cadastros Escolares',
                        style: TextStyle(
                            fontSize: 30,
                            fontWeight: FontWeight.bold,
                            color: Colors.white),
                      ),
                    ),
                    decoration: const BoxDecoration(
                      color: Colors.orangeAccent,
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(25),
                          bottomRight: Radius.circular(25)),
                    ),
                    height: 80,
                    width: double.infinity,
                  ),
                ],
              ),
            ),
          ),
          floatingActionButton: Icon(Icons.school_outlined),
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20, top: 100, right: 20),
          child: Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Colors.white,
            ),
            height: 100,
            width: double.infinity,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingButtons(
                    icon: Icons.supervised_user_circle_outlined,
                    tip: 'Alunos',
                    screenName: 'cadastro_alunos',
                  ),
                  FloatingButtons(
                    icon: Icons.book_outlined,
                    tip: 'Cursos',
                    screenName: 'cadastro_cursos',
                  ),
                ],
              ),
            ),
          ),
        ),
      ],
    );
  }
}

// FloatingButtons(
// icon: Icons.school_outlined,
// tip: 'Matrículas',
// bottomSheetTittle: 'Matrículas',
// ),
