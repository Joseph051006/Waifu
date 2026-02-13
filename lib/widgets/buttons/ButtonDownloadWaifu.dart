import 'dart:io';
import 'package:flutter/material.dart';
import 'package:path_provider/path_provider.dart';
import 'package:http/http.dart' as http;
import 'ButtonChangeWaifu.dart' as url;

class Buttondownloadwaifu extends StatefulWidget {
  const Buttondownloadwaifu({super.key});

  @override
  State<Buttondownloadwaifu> createState() => _ButtondownloadwaifuState();
}

class _ButtondownloadwaifuState extends State<Buttondownloadwaifu> {

  Future<void> _downloadImage(String apiUrl) async {
    try {
      final response = await http.get(Uri.parse(apiUrl));

      if (response.statusCode == 200) {
        final dir = await getApplicationDocumentsDirectory();
        final file = File('${dir.path}/pic.jpg');

        await file.writeAsBytes(response.bodyBytes);

        ScaffoldMessenger.of(context).showSnackBar(
          const SnackBar(content: Text("Image downloaded successfully")),
        );
      } else {
        throw Exception("Failed to download image");
      }
    } catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text("Error: $e")),
      );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: Colors.grey,
      ),
      child: ElevatedButton(
        onPressed: () => _downloadImage(url.apiUrl),
        child: const Text("Download"),
      ),
    );
  }
}
