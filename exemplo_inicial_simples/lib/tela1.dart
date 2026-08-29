import 'package:flutter/material.dart';

class Tela1 extends StatelessWidget {
  const Tela1({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Exemplo Inicial Simples"),
        //backgroundColor: Colors.green,
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            var snackBar = SnackBar(
              content: Text(
                'Exemplo de snackBar',
                style: TextStyle(fontSize: 16),
              ),
            );
            ScaffoldMessenger.of(context).showSnackBar(snackBar);
          },
          child: Text(
            "Clique-me",
            style: TextStyle(fontSize: 16, color: Colors.red),
          ),
        ),
      ),
    );
  }
}
