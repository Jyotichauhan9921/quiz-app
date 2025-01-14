import'package:flutter/material.dart';

void main() => runApp(MyApp());

// This Widget is tge main application widget.
class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: MySliderApp(),
    );
  }
}

class MySliderApp extends StatefulWidget{
  MySliderApp({Key key}):super(key:key);
  @override
  MySliderApp createState() => _MySliderAppState();
}

class _MySliderAppState extends State<MySliderApp>{
  RangeValues _currentRangeValues=const RangeValues(20,60);
  @override
  Widget build(BuildContext context){
    return Scaffold(
       appBar:AppBar(
         title:Text("flutter range slider demo"),
       ),
      body:Padding(
        padding:EdgeInsets.all(15.0),
        child: Center(
          child:Row(
            mainAxisAlignment:MainAxisAlignment.spaceEvenly,
            mainAxisSize:MainAxisSize.max,
            children:[
              Icon(
                Icons.volume_up,
                size:40,
              ),
              new Expanded(
                child:RangeSlider(
                  values:_currentRangeValues,
                  min:0,
                  max:100,
                  divisions:10,
                  labels:RangeLabels(
                    _currentRangeValues.start.round().toString(),
                    _currentRangeValues.end.round().toString(),

                  ),
                  onChanged:(RangeValues values){
                    setState((){
                       _currentRangeValues=values;
                    });

                  }
                )
              )
            ]
          )
        )
      )
    );
  }
}