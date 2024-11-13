import 'package:flutter/material.dart';
void main()=>runApp(MyApp());
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
     return MaterialApp(
       home:Scaffold(
         appBar:AppBar(
           title:Text("flutter stack widget example"),
         ),
         body:Center(
           child:Stack(
             fit:StackFit.passthrough,
             overflow:Overflow.visible,
             children:[
               Container(
                 height:300,
                 width:400,color:Colors.green,
               )
             ]
           )
         )
       )
     )
}