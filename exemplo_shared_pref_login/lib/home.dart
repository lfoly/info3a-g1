import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'cadastro.dart';
import 'principal.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  void initState() {
    super.initState();
    verificarUsuario();
  }

  Future<void> verificarUsuario() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? usuario = prefs.getString("usuario");

    if (!mounted) return;

    if (usuario == null) {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => const Cadastro()),
      );
    } else {
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (_) => Principal(nome: usuario)),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return const Scaffold(body: Center(child: CircularProgressIndicator()));
  }
}
