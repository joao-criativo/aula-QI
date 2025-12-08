import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final TextEditingController userController = TextEditingController();
  final TextEditingController passController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Guilda Login"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(20),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            // IMAGEM
            Image.network(
              "https://wallpapers.com/images/thumbnail/cute-anime-profile-pictures-ocsp6rlknshumiuw.jpg",
              height: 120,
            ),
            const SizedBox(height: 30),

            // TEXTO USUÁRIO
            TextField(
              controller: userController,
              decoration: const InputDecoration(
                labelText: "Usuário",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 20),

            // TEXTO SENHA
            TextField(
              controller: passController,
              obscureText: true,
              decoration: const InputDecoration(
                labelText: "Senha",
                border: OutlineInputBorder(),
              ),
            ),
            const SizedBox(height: 30),

            // BOTÃO ENTRAR
            ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, '/form');
              },
              child: const Text("Entrar"),
            ),

            const SizedBox(height: 10),

            // BOTÃO NOVO REGISTRO
            OutlinedButton(
              onPressed: () {},
              child: const Text("Novo Registro"),
            ),
          ],
        ),
      ),
    );
  }
}
