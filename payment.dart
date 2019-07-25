import 'package:flutter/material.dart';


class payment extends StatefulWidget {
  @override
  _paymentState createState() => _paymentState();
}

class _paymentState extends State<payment> {
  @override
  Widget build(BuildContext context) {
    return Container( 

      decoration: BoxDecoration(
      gradient: LinearGradient(
          begin: Alignment.topLeft,
          end: Alignment.bottomRight,
          colors: [Color.fromRGBO(31, 50, 255, 0.8), Color.fromRGBO(166, 255, 203, 0.8)])),


    child : Scaffold(
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
          mainAxisSize:MainAxisSize.min ,
          children: <Widget>[
            SizedBox(height: 20,),
            TextField(
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

            SizedBox(height: 20,),
            TextField(
              style:TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
              keyboardType: TextInputType.number,
              
               decoration: InputDecoration(
                  border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),
                  ),
                  ),
                 labelText: 'Amount',
                 filled: true,
                  fillColor: Color.fromRGBO(167, 0, 255, 1),
               ),

            ),

            SizedBox(height: 20,),
            TextField(
              style:TextStyle(color: Color.fromRGBO(255, 255, 255, 1)),
              keyboardType: TextInputType.number,
               decoration: InputDecoration(
                  border: new OutlineInputBorder(
                  borderRadius: const BorderRadius.all(
                  const Radius.circular(30.0),
                  ),
                  ),
                 labelText: 'Date',
                 filled: true,
                 fillColor: Color.fromRGBO(167, 0, 255, 1), 
               ),

            ),
            SizedBox(height: 20,),
           ButtonTheme(
              buttonColor: Color.fromARGB(1, 255, 255, 0),
              child:RaisedButton(
                
                onPressed:  () {},
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