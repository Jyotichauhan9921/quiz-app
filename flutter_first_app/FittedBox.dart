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
               child:
                   FittedBox(
                        child:  Container(
                                   child: Text('I am fitted'),
                                 ),
                             fit:BoxFit.contain,
               )
            )

    );
  }
}






