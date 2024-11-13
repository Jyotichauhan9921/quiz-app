import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
    @override
    Widget build(BuildContext context){
      return MaterialApp(
        home: MyStackWidget(),
      );
    }
}

class MyStackWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
       home:Scaffold(
         appBar:AppBar(
           title:Text('flutter stack widget'),
         ),
         body:Center(
           child: Stack(
              fit:StackFit.passthrough,
              overflow:Overflow.visible,
              children:[
                 Container(
                   height:300,
                   width:400,
                   color:Colors.cyanAccent,
                   child:Text(
                     'top widget:green',
                     style:TextStyle(color:Colors.white,fontSize:20)
                   ),
                 ),
                Positioned(
                  top:30,
                  left:20,
                  child:Container(
                    height:100,
                    width:150,
                    color:Colors.orange,
                    child: Center(
                      child:Text(
                        'Bottom Widget',style:TextStyle(color:Colors.white,fontSize:20)
                      ),
                    ),
                  ),
                ),
                Positioned(
                  top:30,
                  left:100,
                  child:Container(
                    height:100,
                    width:150,
                    color:Colors.yellow,
                    child:Center(
                      child:Text('RIGHT WIDGET',style:TextStyle(color:Colors.white,fontSize: 20)
                    )
                  )
                )
              ]
           )
         )
       )
    );
  }
}