import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
    return MaterialApp(
        title: 'third app',
        theme: ThemeData(
            primarySwatch: Colors.grey
        ),
        home: Scaffold(
            appBar: AppBar(
                title: Text("Text Widget ")
            ),
            body:
                    Row(

                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.grey
                          ),
                          child: Text('first', style: TextStyle(
                              fontSize: 30, color:Colors.red

                          ))
                        ),

                        Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Colors.grey
                            ),
                          child: Text('second', style: TextStyle(
                              fontSize: 30, color: Colors.red
                          ),)
                        ),

                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color:Colors.grey

                          ),
                          child: Text('third', style: TextStyle(
                            fontSize: 30, color: Colors.red
                          ))

                        )


                      ],

                    )

        )
    );

  }
}

