import 'package:flutter/material.dart';
void main () {
  runApp (MyApp());
}
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
        appBar: AppBar(
          title: Text('layout widget'),
        ),
        body:
        Center(
           child: Container(
              height: 50.0,
              width:50.0,
              color:Colors.red,
            child: OverflowBox(
            // minHeight: 70.0,  //shows parent widget
            // minWidth: 70.0,
              child: Container(
                  height:40.0,
                  width:40.0,
                 color:Colors.blue,
              )
            )
        )
        )
    );
  }
}






