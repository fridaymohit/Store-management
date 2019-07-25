 import 'package:flutter/material.dart';
 import 'login.dart';
 
  

 void main() => runApp(myapp());

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "GMS",
      debugShowCheckedModeBanner: false,
      theme: new ThemeData(
        primaryColor: Color.fromRGBO(5, 6, 6, 1.0),
        
      ),
      home : FirstPage()
      
    );
  }
}