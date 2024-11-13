import'package:flutter/material.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home:MyGridScreen(),
    );
  }
}
class MyGridScreen extends StatefulWidget{
  MyGridScreen({Key key}):super(key:key);
  @override
  _MyGridScreenState createState()=>_MyGridScreenState();
}
class _MyGridScreenState extends State<MyGridScreen>{
  @override
  Widget build(BuildContext context){
    return Scaffold(
      appBar:AppBar(
        title:Text('flutter gridview demo'),
        backgroundColor:Colors.green,
      ),
      body:Center(
        child:GridView.extent(
          crossAxisSpacing: 5,
          mainAxisSpacing: 5,
          maxCrossAxisExtent: 50.0,
          children:[
            Container(
              padding:const EdgeInsets.all(8),
              child: const Text('First',style:TextStyle(fontSize:20)),
              color:Colors.blue,
            ),
            Container(
              padding:const EdgeInsets.all(8),
              child:const Text('Third',style:TextStyle(fontSize:20)),
              color:Colors.blue,
            ),
            Container(
              padding:const EdgeInsets.all(8),
              child:const Text('fourth',style:TextStyle(fontSize:20)),
              color:Colors.red,
            ),
            Container(
              padding:const EdgeInsets.all(8),
              child:const Text('fifth',style:TextStyle(fontSize:20)),
              color:Colors.tealAccent,
            ),
            Container(
              padding:const EdgeInsets.all(8),
              child:const Text('sixth',style:TextStyle(fontSize: 20)),
              color:Colors.pink,
            ),
            Container(
              padding:EdgeInsets.all(8),
              child:const Text('seven',style:TextStyle(fontSize:20)),
              color:Colors.yellow,
            ),
            Container(
              padding:EdgeInsets.all(8),
              child:const Text('eigth',style:TextStyle(fontSize:20)),
              color:Colors.teal,
            ),
            Container(
              padding: EdgeInsets.all(8),
              child:const Text('ninth',style:TextStyle(fontSize:20)),
              color:Colors.cyanAccent
            )
          ]
        )
      )
    );
  }
}
