import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';

//essa classe representa o widget responável por gerir
//todo meu app
class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

//método onde devemos indicar o que nosso wiget
//irá apresentar: como será a sua composição?
//o que ele mostra ao usuario
  @override
  Widget build(BuildContext context) {
    //a classe MaterialApp é uma classe que segue
    //as regras do material (material.io) e sabe
    //gerenciar um app como um todo
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

//essa lasse representa o widget onde vamos montar
//nossa tela
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: SizedBox(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            //SizeBox vai forçar o Container, que está
            //dentro dele a ter tamanho 300x200
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        color: geraAleatorio(),
                      ),
                      child: Center(
                        child: Text(Random().nextInt(100).toString()),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        color: geraAleatorio(),
                      ),
                      child: Center(
                        child: Text(Random().nextInt(100).toString()),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        color: geraAleatorio(),
                      ),
                      child: Center(
                        child: Text(Random().nextInt(100).toString()),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        color: geraAleatorio(),
                      ),
                      child: Center(
                        child: Text(Random().nextInt(100).toString()),
                      ),
                    ),
                  ),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        color: geraAleatorio(),
                      ),
                      child: Center(
                        child: Text(Random().nextInt(100).toString()),
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.topLeft,
                  child: SizedBox(
                    width: 150,
                    height: 150,
                    child: Container(
                      decoration: BoxDecoration(
                        color: geraAleatorio(),
                      ),
                      child: Center(
                        child: Text(Random().nextInt(100).toString()),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}

Color geraAleatorio() {
  final random = Random();

  return Color.fromARGB(
    255,
    random.nextInt(256),
    random.nextInt(256),
    random.nextInt(256),
  );
}

//todo projeto emdart, começa a execução
//pelo metodo main
void main() => runApp(const Aplicacao());
