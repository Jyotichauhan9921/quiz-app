import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
     _MyAppState createState()=>_MyAppState();
}
class _MyAppState extends State<MyApp>
{
      @override
      Widget build(BuildContext context){
             return MaterialApp(
               theme:ThemeData(
                  primarySwatch:Colors.cyan
               ),
               debugShowCheckedModeBanner:false,
               home:Scaffold(
                 resizeToAvoidBottomInset:false,
                 appBar: AppBar(
                   title:Text('List'),
                 ),
                 body: Container(
                      child:
                             Column(
                               children:[
                                  Container(
                                    padding:EdgeInsets.fromLTRB(20,20,20,0),
                                    alignment:Alignment.topLeft,
                                    child:Text('Name',style:TextStyle(fontSize:20)),
                                  ),
                                 Container(
                                   padding:EdgeInsets.fromLTRB(20,0,20,0),
                                   child:TextField(
                                    // decoration:OutlineInputBorder(

                                     )
                                   ),

                                 Container(
                                   padding:EdgeInsets.fromLTRB(20,20,20,0),
                                   alignment:Alignment.topLeft,
                                   child: Text('Age',style:TextStyle(fontSize:20)),
                                 ),
                                 Container(
                                   padding:EdgeInsets.fromLTRB(20,5,20,0),
                                   child:TextField(

                                   ),
                                 ),
                                   Container(
                                     padding:EdgeInsets.fromLTRB(20,20,20,0),
                                     alignment:Alignment.topLeft,
                                     child:Text('Occupation',style:TextStyle(fontSize:20)),
                                   ),
                                 Container(
                                   padding:EdgeInsets.fromLTRB(20,5,20,0),
                                   child:TextField(

                                   )
                                 ),

                             Row(
                                    mainAxisAlignment:MainAxisAlignment.spaceAround,
                                 //crossAxisAlignment:CrossAxisAlignment.center,
                                 children:[
                                     RaisedButton(
                                       color:Colors.grey,
                                       child:Text('ADD TO LIST'),
                                       onPressed:(){

                                       }
                                     ),

                                     RaisedButton(
                                       color:Colors.redAccent,
                                       child:Text('SUBMIT'),
                                       onPressed:(){

                                       }
                                     )
                                   ]
                                 )

                                 ]
                                 )
                             )
                 )
               );
      }
}