import'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyGridScreen(),
    );
  }
}

class MyGridScreen extends StatefulWidget{
  MyGridScreen({Key key}) : super(key: key);

  @override
  _MyGridScreenState createState() => _MyGridScreenState();
}

class _MyGridScreenState extends State<MyGridScreen> {
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar: AppBar(
        title: Text("Flutter GridView Demo"),
        backgroundColor: Colors.green,

      ),
      body: Center(
        child: GridView.extent(
          primary: false,
          padding: const EdgeInsets.all(16),
          crossAxisSpacing: 10,
          mainAxisSpacing: 10,
          maxCrossAxisExtent:200.0,
          children:[
            Container(
              padding:const EdgeInsets.all(8),
              child:const Text('First',style:TextStyle(fontSize:20)),
              color:Colors.yellow,
            ),
            Container(
              padding: const EdgeInsets.all(8),
              child: const Text('third',style:TextStyle(fontSize:20)),
              color:Colors.yellow,
            ),
            Container(
              padding:EdgeInsets.all(8),
              child: const Text('second',style:TextStyle(fontSize:20)),
              color:Colors.blue,
            ),
            Container(
              padding:EdgeInsets.all(8),
              child:const Text('Four',style:TextStyle(fontSize:20)),
              color:Colors.blue,
            ),
          ]

        )
      )
    );
  }
}