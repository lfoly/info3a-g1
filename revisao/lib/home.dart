import 'package:flutter/material.dart';
import 'aluno.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  TextEditingController txtNome = TextEditingController();
  TextEditingController txtMatricula = TextEditingController();
  TextEditingController txtCurso = TextEditingController();

  Aluno? aluno;

  void cadastrarAluno() {
    if (txtNome.text.isEmpty ||
        txtMatricula.text.isEmpty ||
        txtCurso.text.isEmpty) {
      SnackBar mensagem = SnackBar(
        content: Text("Todos os campos são obrigatórios!"),
      );
      ScaffoldMessenger.of(context).showSnackBar(mensagem);
      return;
    }
    aluno = Aluno(txtNome.text, txtMatricula.text, txtCurso.text);
    setState(() {});
    SnackBar mensagem = SnackBar(
      content: Text("Aluno cadastrado com sucesso!"),
    );
    ScaffoldMessenger.of(context).showSnackBar(mensagem);
  }

  void limparCampos() {
    txtNome.clear();
    txtMatricula.clear();
    txtCurso.clear();
    aluno = null;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Cadastro de Alunos"), centerTitle: true),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            TextField(
              controller: txtNome,
              decoration: InputDecoration(
                labelText: "Nome",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: txtMatricula,
              decoration: InputDecoration(
                labelText: "Matricula",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            TextField(
              controller: txtCurso,
              decoration: InputDecoration(
                labelText: "Curso",
                border: OutlineInputBorder(),
              ),
            ),
            SizedBox(height: 15),
            ElevatedButton(
              onPressed: cadastrarAluno,
              child: Text("Exibir dados"),
            ),
            SizedBox(height: 10),
            ElevatedButton(onPressed: limparCampos, child: Text("Limpar")),
            SizedBox(height: 30),
            Text(
              "Dados do Aluno",
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
            Divider(),

            if (aluno != null)
              Container(
                padding: EdgeInsets.all(15),
                decoration: BoxDecoration(
                  border: Border.all(color: Colors.grey),
                  borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Nome: ${aluno!.nome}",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Matrícula: ${aluno!.matricula}",
                      style: TextStyle(fontSize: 18),
                    ),
                    SizedBox(height: 10),
                    Text(
                      "Curso: ${aluno!.curso}",
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
          ],
        ),
      ),
    );
  }
}
