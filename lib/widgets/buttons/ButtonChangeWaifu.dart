import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ChangeWaifu extends StatefulWidget {
  const ChangeWaifu({super.key});
  @override
  State<ChangeWaifu> createState() => _ChangeWaifuState();
}

class _ChangeWaifuState extends State<ChangeWaifu> {
  @override
  Widget build(BuildContext context) {
    return Container(
      alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [_pic(), _button()],
      ),
    );
  }

  Widget _pic() {
    return Container(
      height: 300,
      alignment: Alignment.center,
      child: Image.network(apiUrl),
    );
  }

  Widget _button() {
    return Container(
      alignment: Alignment.center,
      child: ElevatedButton(onPressed: fetchWaifu, child: Text("New Waifu")),
    );
  }

  String apiUrl = "https://api.waifu.pics/sfw/waifu";

  Future<void> fetchWaifu() async {
    const String waifuApiUrl = "https://api.waifu.pics/sfw/waifu";
    final response = await http.get(Uri.parse(waifuApiUrl));
    final Map<String, dynamic> data = jsonDecode(response.body);
    final String url = data['url'];
    setState(() {
      apiUrl = url;
    });
  }
}
