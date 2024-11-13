import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
       home:Scaffold(
               body:Column(
                 children:[
                              first_child,
                              //second_child,


                 ]
               )
       )
    );
  }
}

Widget first_child=Container(
    child: Column(
        children:[
          CircleAvatar(
            radius:50.0, //backgroundImage:Image.asset(name)
          ),
          Center(
           child:Column(
                children:[
                    Text("abc"),
                    Text('def'),
                 ]
              )
          ),


    )
);