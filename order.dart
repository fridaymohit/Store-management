import 'package:flutter/material.dart';
import 'dart:async';
import './pop.dart';
import './node.dart';

class order extends StatefulWidget {
  @override
  _orderState createState() => _orderState();
}



class _orderState extends State<order> {

    final m1 = TextEditingController();
    final m2 = TextEditingController();
    final m3 = TextEditingController();
   bool sta = false;

   @override
   void dispose(){
     m1.dispose();
     m2.dispose();
     m3.dispose();
     super.dispose();
   }

  @override
  Widget build(BuildContext context) {
    return Container(

      decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color.fromRGBO(31, 50, 255, 0.8), Color.fromRGBO(166, 255, 203, 0.8)])),

      child:Scaffold(
        resizeToAvoidBottomPadding: false,
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
       child:Column(
         mainAxisSize: MainAxisSize.min,
         children: <Widget>[
            TextField(
              controller: m1,
              style:TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
              keyboardType: TextInputType.number,
               decoration: InputDecoration(
                  border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),
                  ),
                  ),
                 labelText: 'USER ID',
                 filled: true,
                 fillColor: Color.fromRGBO(167, 0, 255, 1),
                  
               ),
             ),
             SizedBox(height: 12.0),
              TextField(
                controller: m2,
                style:TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
               decoration: InputDecoration(
                 border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),
                  ),
                  ),
                 labelText: 'BILL NO.',
                 filled: true,
                 fillColor: Color.fromRGBO(167, 0, 255, 1), 
               ),
             ),
             SizedBox(height: 12.0),
              TextField(
                controller: m3,
                style:TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),
                  ),
                  ),
                 labelText: 'AMOUNT',
                 filled: true,
                 fillColor: Color.fromRGBO(167, 0, 255, 1), 
               ),
             ),
             SizedBox(height: 12.0),
              TextField(
                style:TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
                keyboardType: TextInputType.number,
               decoration: InputDecoration(
                 border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),
                  ),
                  ),
                 labelText: 'DATE',
                 filled: true,
                 fillColor: Color.fromRGBO(167, 0, 255, 1), 
               ),
             ),
             SizedBox(height: 24.0),
             Text('Payment',style: TextStyle(fontWeight: FontWeight.bold,color:Color.fromRGBO(167, 0, 255, 1)),),
            new Checkbox(
              value: sta, 
              onChanged: (bool value){
                setState(() {
                  sta = value;
                });
              }
             
               
            ),
            ButtonTheme(
              buttonColor: Color.fromARGB(1, 255, 255, 0),
              child:RaisedButton(
                
                onPressed:  () {

                    showDialog(
                        context: context,
                        builder: (BuildContext context) => leadDialog4);


                },
                child: const Text(
                  'Submit',
              style: TextStyle(fontSize: 20)
            ),
             color: Theme.of(context).accentColor,
              elevation: 4.0,
               
              )
            )      
         ],

       )
         
     )
        ],
     ),
      )
    );
  }

}