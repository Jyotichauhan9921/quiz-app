import 'package:flutter/material.dart';
import 'package:ui1/subUI4.dart';

void main()=>runApp(MyApp());    //write about =>

class MyApp extends StatefulWidget{
  _MyAppState createState()=>_MyAppState();        //write about stateful widget
}
class _MyAppState extends State<MyApp>{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home:Scaffold(
              body: Container(
                     child: Center(
                            child:Text('text in new font',style:TextStyle(fontFamily:'DancingScripts',fontSize:30)),
                     )
              ),
        ),
        );
  }
}