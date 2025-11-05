import 'package:flutter/material.dart';
import 'package:joao/screens/myhomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Jack Land',
      theme: ThemeData(
       
        colorScheme: ColorScheme.fromSeed(seedColor: Color.fromARGB(255, 182, 0, 0)),
        useMaterial3: true,
      ),
      home: const MyHomePage()
    );
  }
}
