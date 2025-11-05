import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyStory extends StatelessWidget {
  final String? tittle = "Perfil";

  const MyStory({super.key, required Title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.black,
          child: FlutterLogo(size: 60),
        ),
        Text(title!)
      ],
    );
  }
}
hyper.raio.krein.123