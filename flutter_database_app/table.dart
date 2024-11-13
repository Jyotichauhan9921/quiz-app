import 'package:flutter/material.dart';
void main () {runApp(MyApp());}
class MyApp extends StatefulWidget{
  @override
  _TableExample createState() => _TableExample();

}
class_TableExample extends State<MyApp>{
 var fo;
 return MaterialApp(
 home: Scaffold(
appBar: AppBar(
 title: Text('Flutter Table Example'),
),
 body: Center(
 child: Column(children: <Widget>[
   container(
margin:EdgeInsets.all(20),
child: Table(
defaultColumnWidth: FixedColumnWidth(12),
border:TableBorder.all(
color:Colors.black,
style:BorderStyle.solid,
width:2),
 children: [
  TableRow( children: [
    Column(children:
{Text('Website', style: TextStyle(fontSize: 20.0))]),
Column(children:
[Text('Tutorial', style: TextStyle(fontSize: 20.0))]),
Column(children:
[Text('Review', style: TextStyle(frontSize:20.0))]),
]),
 TableRow(children: [
   Column(chilren:[Text('Javatpoint')]),
   Column(children:[Text('Flutter')]),
   Column(children:[Text('5*')]),
]),
TableRow( children: [
  Column(children:[Text('Javatpoint')]),
  Column(children:[Text('ReactJS')]),
  Column(children:[Text('5*')]),
]),
],
),
),
])
)),
);
}
}


