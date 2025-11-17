import 'package:flutter/material.dart';
import 'package:joao/screens/settingspage.dart';

class MyBottomNavigation extends StatefulWidget {
  const MyBottomNavigation({super.key});

  @override
  State<MyBottomNavigation> createState() => _MyBottomNavigationState();
}

class _MyBottomNavigationState extends State<MyBottomNavigation> {
  int index = 0;

  void _onItemTapped(int index) {
    setState(() {
      index = index;
    });
  }
  
  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
        currentIndex: index,
        onTap: (i) {
          setState(() {
            index = i;
            switch(index) {
              case 1 : Navigator.push(
                context, MaterialPageRoute
                (builder: (context) =>MySettingsPage
                (title: "Configurações") ));
            } 
          });
        },
        selectedItemColor: Colors.orangeAccent,
        unselectedItemColor: Colors.grey,
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'Search'),
          BottomNavigationBarItem(icon: Icon(Icons.notifications), label: 'Notifications'),
          BottomNavigationBarItem(icon: Icon(Icons.account_circle), label: 'Perfil'),
        ],
      );
  }
}