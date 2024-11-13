import 'package:flutter/material.dart';
class ToastExample extends StatefulWidget{
          @override
         _ToastExampleState createState(){
            return _ToastExampleState();
          }
}
class _ToastExampleState extends State{
  void showToast(){
    Fluttertoast.showToast(
      msg: 'this is toast notification',
      toastLength:Toast.LENGTH_SHORT,
      gravity:ToastGravity.BOTTOM,
      timeInSecForIos:1,
      backgroundColor:Colors.red,
      textColor:Colors.yellow
    );
  }
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Toast notification example',
      home:Scaffold(
        appBar:AppBar(
          title:Text('toast notification example'),
        ),
        body:Padding(
          padding:EdgeInsets.all(15.0),
          child: Center(
            child:RaisedButton(
              child:Text('lick to show'),
              onPressed:showToast,
            ),
          ),
        )
      ),
    );
  }
}
void main()=>runApp(ToastExample()); 