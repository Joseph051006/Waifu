
import 'package:flutter/material.dart';

class AppBarHome extends StatelessWidget implements PreferredSizeWidget {
  const AppBarHome({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
          title: Center(
            child: Text(
              "Welcome to your lovely Waifu app",
              style: TextStyle(color: Colors.pink, fontStyle: FontStyle.italic),
            ),
          ),
          backgroundColor: Colors.lightBlueAccent,
        );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}