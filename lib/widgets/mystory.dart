import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyStory extends StatelessWidget {
  final String title;

  const MyStory({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        CircleAvatar(
          radius: 25,
          backgroundColor: Colors.black,
          child: Image.network("https://i.ytimg.com/vi/AfRwqvc6wCU/hq720.jpg?sqp=-oaymwEhCK4FEIIDSFryq4qpAxMIARUAAAAAGAElAADIQj0AgKJD&rs=AOn4CLCQSrvJBvC7CecghzNnA6K3BEO7DQ"),
        ),
        Text(title)
      ],
    );
  }
}
