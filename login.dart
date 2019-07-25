import 'package:flutter/material.dart';
import 'order.dart';
import 'payment.dart';

 class FirstPage extends StatefulWidget {
   @override
   _FirstPageState createState() => _FirstPageState();
 }
 
 class _FirstPageState extends State<FirstPage> {
   @override
   Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color.fromRGBO(31, 50, 255, 0.8), Color.fromRGBO(166, 255, 203, 0.8)])),

    child:Scaffold(
       appBar : AppBar(
         centerTitle: true,
         title: Text('Gungun Medical Store'),
         backgroundColor: Color.fromRGBO(255, 165, 0, 1),
       ),
      
     backgroundColor: Colors.transparent,
     body:
     Stack(
        children: <Widget>[
           
        
     
     Center(
        
     
    child: Column(
      mainAxisSize: MainAxisSize.min,
      children: <Widget>[
         
        ButtonTheme(
          minWidth: 200.0,
          child: new RaisedButton(
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            onPressed:  () {  
             Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => order()),);
            }, 
            child: const Text(
              'Order Received',
              style: TextStyle(fontSize: 20)
            ),
             color: Color.fromRGBO(135, 206,235, 1),
              elevation: 4.0,
             splashColor: Colors.greenAccent,
          ),
        ),
        const SizedBox(height: 30),
        ButtonTheme(
           
          minWidth: 200.0,
          child: RaisedButton(
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            onPressed:  () {
              Navigator.push(context, 
                      MaterialPageRoute(builder: (context) => payment()),);
            },
            child: const Text(
              'Payment',
              style: TextStyle(fontSize: 20)
            ),
             color: Color.fromRGBO(135, 206, 235, 1),
              elevation: 4.0,
              splashColor: Colors.redAccent, 
          ),
        ),
        const SizedBox(height: 30),
       ButtonTheme(
          minWidth: 200.0,
          child: RaisedButton(
            shape: new RoundedRectangleBorder(borderRadius: new BorderRadius.circular(30.0)),
            onPressed:  () {
               
            },
            child: const Text(
              'Summary',
              style: TextStyle(fontSize: 20)
            ),
             color: Color.fromRGBO(135, 206, 235, 1),
              elevation: 4.0,
              splashColor: Colors.pinkAccent,
          ),
        ),
      ],
    ),
     )
        ],
     ),      
  )
    );
   }
 }



    