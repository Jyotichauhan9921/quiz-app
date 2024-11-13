import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter GridView Demo"),
          backgroundColor: Colors.red,
        ),
        body: Center(
           child:
           Container(
           width:380,
            height:270,
            padding: EdgeInsets.all(12.0),
            child: Card(
              shape:RoundedRectangleBorder(
                     borderRadius:BorderRadius.circular(18)
              ),

              color:Colors.amberAccent,
              elevation:5,
              shadowColor:Colors.grey,
              child: Center(
                     child:Text('Contact card',style:TextStyle(fontSize:20)),
              ),
            )
        ),
        ),
      ),
    );
  }
}