
import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;


void main(){
 runApp(Waifu());
}

class Waifu extends StatelessWidget {
  const Waifu({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Center(
            child: Text("Welcome to your lovely Waifu app",
            style:TextStyle(
              color: Colors.pink,
              fontStyle: FontStyle.italic),                        
            )
          ),
        backgroundColor: Colors.lightBlueAccent,
        
      ),
body: Container(
  
)
     ,
bottomNavigationBar: BottomAppBar(
  color: Colors.blueAccent,
  child: Container(
    alignment: Alignment.center,
      child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        
        _navItem("Download"),
        _navItem("Home"),
        _navItem("Settings")          

      ],
    ),
  ),
  
),      
 ));
    
    
  }

}  
Widget _navItem (String text) {
    return Container(
      alignment: Alignment.center,
      padding: EdgeInsets.symmetric(horizontal: 24, vertical: 18),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Colors.grey,
      ),
      child: Text(
        text,
        style: TextStyle(color: Colors.pink),        
      ),
  );
}

class waifuAPI extends StatefulWidget {
  const waifuAPI({super.key});

  @override
  State<waifuAPI> createState() => _waifuAPIState();
}
 
 String apiUrl = "https://api.waifu.pics/sfw/waifu";

class _waifuAPIState extends State<waifuAPI> {

  
 

  @override
  Widget build(BuildContext context) {
    
    return Container(
    alignment: Alignment.center,
      child: Column(
        children: [
          _pic(),
          _button
        ],
      )

      

    );
  }
}

Future<String> fetchWaifu() async{

const String waifuApiUrl = "https://api.waifu.pics/sfw/waifu";

final response = await http.get(Uri.parse(waifuApiUrl));
final Map<String, dynamic> data = jsonDecode(response.body);
final String url = data['url'];

return apiUrl = url;
}

Widget _pic(){
  return Container(
    alignment: Alignment.center,
    child: Image(image: AssetImage("lib/assets/ram")),
  );
}
Widget _button(){
  return Container(
    alignment: Alignment.center,
    child: ElevatedButton(
      onPressed: fetchWaifu, 
      child: Text("New Waifu")
    )
  );
}