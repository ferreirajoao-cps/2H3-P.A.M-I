import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Home"),
        backgroundColor: Theme.of(context).colorScheme.inversePrimary,
      ),
      body: const Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Column(
              children: [
                Text("Atividade"),
                Text("Avaliativa"),
              ],
            ),
            Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("Nome: João Gabriel Ferreira"),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text("email: joao.ferreira406@etecsp.gov.br"),
                ),
              ],
            ),
            Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [Text("2H3"), Text("Matão")],
                ),
                Align(
                  alignment: Alignment.bottomCenter,
                  child: Text("2024"),
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
