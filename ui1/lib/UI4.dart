import 'package:flutter/material.dart';
import 'package:ui1/subUI4.dart';

void main()=>runApp(MaterialApp(home:MyApp()));    //write about =>

class MyApp extends StatefulWidget{
    _MyAppState createState()=>_MyAppState();        //write about stateful widget
}
class _MyAppState extends State<MyApp>{
   @override
  Widget build(BuildContext context){
     return Scaffold(
                 body: Container(
                                   child: Center(
                                      child:RaisedButton(
                                           child:Text('submit'),
                                           onPressed:(){
                                              showDialog(                             //using directly as a child of container
                                                        context:context,
                                                        builder:(BuildContext context){
                                                               return CustomDialogBox();
                                                        }
                                                   );
                                         }
                                   )
                         ),
           )
     );
   }
}

