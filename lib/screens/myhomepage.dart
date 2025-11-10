import 'package:flutter/material.dart';
import 'package:joao/widgets/mycard.dart';
import 'package:joao/widgets/mydrawer.dart';
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
      drawer: Mydrawer(),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              height: 200,
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: 1,
                  itemBuilder: (context, itens) {
                    return MyStory(title: "carros");
                  }),
            ),
            SizedBox(
                height: 200,
                child: ListView.builder(
                    scrollDirection: Axis.horizontal,
                    itemCount: 10,
                    itemBuilder: (context, itens) {
                      return MyCard(
                        title: "carros",
                        image: "",
                        like: false,
                      );
                    }
              )
            )
          ],
        ),
      ),
    );
  }
}
