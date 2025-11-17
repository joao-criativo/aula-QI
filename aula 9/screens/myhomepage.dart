import 'package:flutter/material.dart';
import 'package:joao/model/profile.dart';
import 'package:joao/widgets/mybottomnavigation.dart';
import 'package:joao/widgets/mycard.dart';
import 'package:joao/widgets/mystory.dart';

class MyHomePage extends StatefulWidget {
  MyHomePage({super.key});

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  

  final List<Profile> listaDados = [
    Profile(name: "ghost", image: "https://png.pngtree.com/png-vector/20240506/ourlarge/pngtree-modern-army-soldier-game-logo-template-for-gamers-png-image_12352914.png", like: false),
    Profile(name: "Dart Vader", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ7iL4yD5hwa4gPsnzjQdTWk2TDxXQsVPJpTw&s", like: true),
    Profile(name: "charizard", image: "https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRrRAVK65cBDuJXA9hbEW7CYPrR5TEc69Ltnw&s", like: false),
    Profile(name: "gohan", image: "https://static1.millenium.org/articles/0/34/55/10/@/1151526-tfue-1-article_m-1.jpg", like: true),
  ];

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("Jack Land"),
        centerTitle: true,
        backgroundColor: Colors.orangeAccent,
      ),

      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(color: Colors.orangeAccent),
              child: Text(
                'Menu',
                style: TextStyle(color: Colors.white, fontSize: 24),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () => Navigator.pop(context),
            ),
            ListTile(
              leading: Icon(Icons.account_circle),
              title: Text('Profile'),
              onTap: () => Navigator.pop(context),
            ),
          ],
        ),
      ),


      body: SingleChildScrollView(
        child: Column(
        children: <Widget>[
          SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listaDados.length,
              
              
              
                itemBuilder: (context, item){
                  return MyStory(title: listaDados[item].name, image: listaDados[item].image,);

                },
              
              ),
          ),

           SizedBox(
            height: 200,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: listaDados.length,
              
              
              
                itemBuilder: (context, item){
                  return MyCard(
                    title: listaDados[item].name,
                     image: listaDados[item].image,
                     like: listaDados[item].like,);

                },
              
              ),
          )
        ]),
      ),

      
      bottomNavigationBar: MyBottomNavigation(),
    );
  }
}
