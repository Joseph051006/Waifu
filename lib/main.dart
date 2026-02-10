
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
  child: waifuAPI(),
  
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
 
 

class _waifuAPIState extends State<waifuAPI> {
String apiUrl = "https://api.waifu.pics/sfw/waifu";

Future<void> fetchWaifu() async{

const String waifuApiUrl = "https://api.waifu.pics/sfw/waifu";

final response = await http.get(Uri.parse(waifuApiUrl));
final Map<String, dynamic> data = jsonDecode(response.body);
final String url = data['url'];
setState(() {
  apiUrl = url;
});
}
 

  @override
  Widget build(BuildContext context) {
    
    return Container(
    alignment: Alignment.center,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          _pic(),
          _button()
        ],
      )

      

    );
  }




Widget _pic(){
  return Container(
    height: 300,
    alignment: Alignment.center,
    child: Image.network(apiUrl),
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

}