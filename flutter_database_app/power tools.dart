import 'package:flutter/material.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home:Scaffold(
        body: ListView(
            children:[
             Row(
               //mainAxisAlignment: MainAxisAlignment.start,
               children:[
                 Container(
                   padding:const EdgeInsets.all(bottom:8),

                 )
               ]
             ),

              //label(),
            ],
        ),
      ),
    );
  }
}
Text label()
{
    return Text("bye",style:TextStyle(fontSize:70,));
}
Widget titleSection=Text("okay",style:TextStyle(fontSize:70,));