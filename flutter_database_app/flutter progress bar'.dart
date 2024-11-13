import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extend StatelessWidget{
  @override
  Widget build(BuildContext context){
       return MaterialApp(
         home:LinearProgressIndicatorApp(),
       );
  }
}

class LinearProgressIndicatorApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState(){
    return LinearProgressIndicatorAppState();
  }
}

class LinearProgressIndicatorAppState extends State<LinearProgressIndicatorApp>{
  bool _loading;
  @override
  void initState(){
    super.initState();
    _loading=false;
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text("flutter linear progress bar"),
      ),
      body:Center(
        child:Container(
          padding:EdgeInsets.all(12.0),
          child:_loading?LinearProgressIndicator():Text(
            "press button for downloading",
            style:TextStyle(fontSize:25)),
          ),
        ),
      if(_progressValue.toStringAsFixed(1)=='1.0'){
         _loading=false;
         t.cancel();
         return;
      }
     });
     });
  }
}