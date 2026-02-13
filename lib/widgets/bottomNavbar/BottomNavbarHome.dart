import 'package:flutter/material.dart';
import 'package:Waifu/widgets/buttons/ButtonDownloadWaifu.dart';

class Bottomnavbarhome extends StatelessWidget {
  const Bottomnavbarhome({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.blueAccent,
      child: Container(
        alignment: Alignment.center,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Buttondownloadwaifu(),
            _navItem("Home"),
            _navItem("Settings"),
          ],
        ),
      ),
    );
  }
}

Widget _navItem(String text) {
  return Container(
    alignment: Alignment.center,
    padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(20),
      color: Colors.grey,
    ),
    child: Text(text, style: TextStyle(color: Colors.pink)),
  );

}