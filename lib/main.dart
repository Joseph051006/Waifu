
import 'package:flutter/material.dart';

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
  color: const Color.fromRGBO(255, 193, 7, 1),
  child: Center(
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: [
        Image(image: AssetImage('lib/assets/rikka.jpeg'),
        height: 300
        
        ),
        Text("Button"),
      ],
    ),
  ),
),
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
