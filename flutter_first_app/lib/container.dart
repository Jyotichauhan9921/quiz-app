import 'package:flutter/material.dart';

void main(){
  runApp(MyApp());
}

class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context){
     return MaterialApp(
       title: 'second app',
       theme: ThemeData(
         primarySwatch: Colors.grey
       ),
       home: Scaffold(
         appBar: AppBar(
            title: Text("second app")
         ),
         body: Container(
               width: 410.0,
                height:610.0,

            decoration: BoxDecoration(
                 color:Colors.lightGreenAccent,
             border: Border.all(color:Colors.black,width:4),
             borderRadius: BorderRadius.circular(16)
           ),
           padding: EdgeInsets.all(105),
           margin: EdgeInsets.all(30),
           alignment: Alignment.centerRight,
           child: Text("container widget", style:TextStyle(fontSize:25))

         )
       )
     );

  }
}

