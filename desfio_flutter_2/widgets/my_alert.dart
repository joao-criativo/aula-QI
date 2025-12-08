import 'package:flutter/material.dart';

class MyAlert {
  static void showSimpleDialog(
    BuildContext context,
    String tittle,
    String messsage,
  ) {
    showDialog(
      context: context,
      builder: (context) {
        return AlertDialog(
          title: Text(tittle),
          content: Text(messsage),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text("Jack Land"),
            ),
          ],
        );
      },
    );
  }
}
