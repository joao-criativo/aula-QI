import 'package:flutter/material.dart';
import 'package:form_flutter/pages/form_page.dart';
import 'package:form_flutter/pages/login_page/login.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      locale: Locale("pt", "BR"),
      debugShowCheckedModeBanner: false,
      title: "Formulário Flutter",
      theme: ThemeData(
        primarySwatch: Colors.grey,
      ),

      // Agora a tela inicial é o Login
      initialRoute: '/guilda',
      routes: {
        '/guilda': (context) => const LoginPage(),
        '/form': (context) => const FormPage(),
      },
    );
  }
}
