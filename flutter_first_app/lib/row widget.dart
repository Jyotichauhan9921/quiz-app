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
            primarySwatch:Colors.cyan
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
                   width: 80,
                   height:50,
                   decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey
                    ),
                   child: Center(
                          child: Text('A', style: TextStyle(
                                fontSize: 20, color: Colors.red
                    ),
                    ))

                    ),

                Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: Colors.grey
                    ),
                    child: Center(
                               child: Text('B', style: TextStyle(
                           fontSize: 20, color: Colors.red
                       ),
                    ))
                ),

                Container(
                    width: 80,
                    height: 50,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color:Colors.grey

                    ),
                    child: Center(
                               child: Text('C', style: TextStyle(
                            fontSize: 20, color: Colors.red
                        ),
                        ))
                )


              ],

            )

        )
    );

  }
}

