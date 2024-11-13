import'package:flutter/material.dart';

void main() => runApp(MyStatefulWidget());



class MyStatefulWidget extends StatefulWidget
{
  MyStatefulWidget( {Key key})  :  super(key:key);
  @override
  _MyStatefulWidgetState createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {

  Widget build(BuildContext context) {
    return MaterialApp(
         home:Scaffold(
           appBar: AppBar(
               title:Text('images')
           ),
           body: Center(
                 child:Image.asset('assets/flower.jfif'),
              )
         ),
    );
  }
}





