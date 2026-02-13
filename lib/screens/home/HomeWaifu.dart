import 'package:flutter/material.dart';
import 'package:Waifu/widgets/buttons/ButtonChangeWaifu.dart';
import 'package:Waifu/widgets/bottomNavbar/BottomNavbarHome.dart';
import 'package:Waifu/widgets/appbar/AppBarHome.dart';

class HomeWaifu extends StatelessWidget {
  const HomeWaifu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBarHome(),
        body: Container(
          child: ChangeWaifu()),
        bottomNavigationBar: Bottomnavbarhome(),
      ),
    );
  }
}
