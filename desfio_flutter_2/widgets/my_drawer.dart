import 'package:flutter/material.dart';

class MyDrawer extends StatelessWidget {
  const MyDrawer({super.key});

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: ListView(
        children: [
          
          DrawerHeader(
            decoration: BoxDecoration(color: Colors.grey[700]),
            child: Column(
              children: const [
                CircleAvatar(
                  radius: 40,
                  backgroundImage: NetworkImage(
                    "https://cdn-icons-png.flaticon.com/512/3135/3135715.png",
                  ),
                ),
                SizedBox(height: 10),
                Text(
                  "Jack Land Guilda",
                  style: TextStyle(color: Colors.white, fontSize: 18),
                ),
              ],
            ),
          ),

          const Divider(),

          ListTile(
            leading: const Icon(Icons.home),
            title: const Text("Início"),
            onTap: () {},
          ),

          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Configurações"),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
