import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(const Aplicacao());

class Aplicacao extends StatelessWidget {
  const Aplicacao({super.key});

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
    final num01Controller = TextEditingController();
    final num02Controller = TextEditingController();

    return Scaffold(
      appBar: AppBar(title: const Text('Calculadora de soma')),
      body: Padding(
        padding: const EdgeInsets.all(25.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            TextField(
              controller: num01Controller,
              decoration: const InputDecoration(
                labelText: "num 01",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            const Text("+, -, *, /"),
            TextField(
              controller: num02Controller,
              decoration: const InputDecoration(
                labelText: "num 02",
              ),
              keyboardType: TextInputType.number,
              inputFormatters: [FilteringTextInputFormatter.digitsOnly],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                ElevatedButton(
                  onPressed: () =>
                      soma(context, num01Controller.text, num02Controller.text),
                  child: const Text("+"),
                ),
                ElevatedButton(
                  onPressed: () =>
                      sub(context, num01Controller.text, num02Controller.text),
                  child: const Text("-"),
                ),
                ElevatedButton(
                  onPressed: () =>
                      mult(context, num01Controller.text, num02Controller.text),
                  child: const Text("*"),
                ),
                ElevatedButton(
                  onPressed: () =>
                      div(context, num01Controller.text, num02Controller.text),
                  child: const Text("/"),
                ),
                ElevatedButton(
                    onPressed: () {
                      num01Controller.text = "";
                      num02Controller.text = "";
                    },
                    child: const Text('Limpar'))
              ],
            )
          ],
        ),
      ),
    );
  }

  void soma(BuildContext context, String valor1, valor2) {
    final num01 = int.parse(valor1);
    final num02 = int.parse(valor2);
    final mensagem = "$num01 + $num02 = ${num01 + num02}";

    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(mensagem),
    ));
  }
}

void sub(BuildContext context, String valor1, valor2) {
  final num01 = int.parse(valor1);
  final num02 = int.parse(valor2);
  final mensagem = "$num01 - $num02 = ${num01 - num02}";

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(mensagem),
  ));
}

void mult(BuildContext context, String valor1, valor2) {
  final num01 = int.parse(valor1);
  final num02 = int.parse(valor2);
  final mensagem = "$num01 * $num02 = ${num01 * num02}";

  ScaffoldMessenger.of(context).showSnackBar(SnackBar(
    content: Text(mensagem),
  ));
}

void div(BuildContext context, String valor1, valor2) {
  final num01 = int.parse(valor1);
  final num02 = int.parse(valor2);
  final mensagem = "$num01 / $num02 = ${num01 / num02}";

  if (num01 == 0 || num02 == 0) {
    ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
      content: Text("Não é possível divir nada por 0"),
    ));
  } else {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      content: Text(mensagem),
    ));
  }
}
