import 'package:flutter/material.dart';
import 'package:Waifu/widgets/buttons/ButtonChangeWaifu.dart';
import 'package:Waifu/widgets/bottomNavbar/BottomNavbarHome.dart';

class HomeWaifu extends StatelessWidget {
  const HomeWaifu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text(
              "Welcome to your lovely Waifu app",
              style: TextStyle(color: Colors.pink, fontStyle: FontStyle.italic),
            ),
          ),
          backgroundColor: Colors.lightBlueAccent,
        ),
        body: Container(child: ChangeWaifu()),
        bottomNavigationBar: Bottomnavbarhome(),
      ),
    );
  }
}
