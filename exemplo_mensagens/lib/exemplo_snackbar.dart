import 'package:flutter/material.dart';

class ExemploSnackbar extends StatelessWidget {
  const ExemploSnackbar({super.key});

  @override
  Widget build(BuildContext context) {
    mostrarMensagem() {
      SnackBar msg = SnackBar(
        content: Text("Exemplo de Snackbar"),
        duration: Duration(seconds: 5),
        backgroundColor: Colors.purple,
        action: SnackBarAction(
          label: "Fechar",
          onPressed: () {
            print("Snackbar pressionado");
          },
        ),
      );
      ScaffoldMessenger.of(context).showSnackBar(msg);
    }

    return Scaffold(
      appBar: AppBar(title: Text("Exemplo Snackbar")),
      body: Center(
        child: ElevatedButton(
          onPressed: mostrarMensagem,
          child: Text("Snackbar"),
        ),
      ),
    );
  }
}
