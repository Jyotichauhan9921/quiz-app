import 'package:flutter/material.dart';
void main () => runApp (MyApp());
class MyApp extends StatelessWidget {
  // It is root widget of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage()
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Stack Widget")),
      body:
             Column(
               children:[
                 Container(
                   color: Colors.blue,
                   height: 100,
                   width:100
                 ),
                 Expanded(
                   flex:5,
                   child:Container(
                     color: Colors.amber,
                     width: 100,
                     height: 100,
                   )
                 ),
                 Container(
                     color: Colors.red,
                     height: 100,
                     width:100
                 ),
                 Expanded(
                      flex:2,
                     child:Container(
                       color: Colors.green,
                       width: 100,
                       height: 100,
                     )
                 ),
               ]
             )

    );
  }
}






