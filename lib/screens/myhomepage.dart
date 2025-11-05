import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:joao/widgets/mystory.dart';

class MyHomePage extends StatelessWidget {
  const MyHomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Jack Land"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),
      drawer: Drawer(
        width: 500,
        backgroundColor: Colors.blue,
        elevation: 20,
        child: Column(
          children: <Widget>[
            Container(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Bem Vindo A Jack Land!",
                style: TextStyle(
                  fontSize: 30,
                  color: Colors.white,
                  fontWeight: FontWeight.bold
                ),
                ),
                
            ),
            Divider(color: Colors.white,),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.mail),
              title: Text("contato"),
            ),
            ListTile(
              iconColor: Colors.white,
              textColor: Colors.white,
              leading: Icon(Icons.settings),
              title: Text("preferencia"),
            ),
            Container(
              child: Image.asset("pikashu.png"),
            )
          ],
        ),
      ),
      body: Column(
        children: <Widget>[
          MyStory(Title: "carros"),
          MyStory(Title: "roupas"),
          MyStory(Title: "casas"),
          MyStory(Title: "shoppings"),
          MyStory(Title: "bancos"),
        ],
      ),
    );
  }
}
