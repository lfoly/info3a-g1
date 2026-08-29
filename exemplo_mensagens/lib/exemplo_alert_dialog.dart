import 'package:flutter/material.dart';

class ExemploAlertDialog extends StatelessWidget {
  const ExemploAlertDialog({super.key});

  @override
  Widget build(BuildContext context) {
    mostrarMensagem() {
      AlertDialog msg = AlertDialog(
        title: const Text("Um Alert Dialog"),
        content: SizedBox(
          height: 50,
          width: 250,
          child: Center(child: Text("Exemplo de Alert Dialog")),
        ),
        actions: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pop();
            },
            child: Text("Ok, ciente"),
          ),
        ],
      );
      return showDialog(
        context: context,
        builder: (BuildContext context) {
          return msg;
        },
      );
    }

    return Scaffold(
      appBar: AppBar(title: Text("Exemplo Alert Dialog")),
      body: Center(
        child: ElevatedButton(
          onPressed: mostrarMensagem,
          child: Text("Alert Dialog"),
        ),
      ),
    );
  }
}
