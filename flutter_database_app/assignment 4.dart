import'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
          children:[
            Stack(
              children:[
                  Container(
                    width:411,
                    height:300,
                    decoration:BoxDecoration(
                      //border:Border.all(),
                      //icon:Icon(Icons.settings)
                      gradient:LinearGradient(
                        begin:Alignment.topLeft,
                        end:Alignment.bottomRight,
                        colors:[Colors.lightBlueAccent,Colors.tealAccent]
                      ),
                      color:Colors.grey,

                    ),
                    child:
                          Column(
                            children:[
                              Padding(
                                padding: EdgeInsets.only(top:40),
                                child: CircleAvatar(
                                                  radius:50.0,
                                                  backgroundImage: AssetImage('assets/Joey Tribbiani.jfif'),
                                       ),
                                  ),
                              Padding(
                                padding:EdgeInsets.only(top:17),
                                child: Text('Joey Tribbiani',style:TextStyle(fontSize: 32,color:Colors.white60))
                              ),
                              Padding(
                                padding:EdgeInsets.all(2),
                                  child: Text('NEW YORK,USA',style:TextStyle(fontSize: 17))
                              )

                            ]
                          )

                  ),
                Positioned(
                    bottom:1,
                    left:1,
                    child: Container(
                      width:205,
                      height:60,
                      decoration:BoxDecoration(
                        //border:Border.all(),
                        color:Colors.tealAccent,
                      ),
                      child:
                             Column(
                                    children:[
                                                Padding(
                                                 padding: EdgeInsets.only(top:10),
                                                 child:Text('463K',style:TextStyle(fontSize:24,color:Colors.white60)),
                                                ),
                                                Text('FOLLOWERS',style:TextStyle(fontSize:15))
                                    ]
                             )
                    )
                ),
               Positioned(
                  bottom:1,
                  left:206,
                  child: Container(
                          width:205,
                          height:60,
                          decoration:BoxDecoration(
                           // border:Border.all(),
                            color:Colors.lightBlueAccent,
                          ),
                          child: Column(
                                 children:[
                                      Padding(
                                       padding: EdgeInsets.only(top:10),
                                       child: Text('873K',style:TextStyle(fontSize:24,color:Colors.white)),
                                      ),
                                      Text('FOLLOWING',style:TextStyle(fontSize:15,color:Colors.white))
                              ]
                          )
                  )
                ),

              ]
            ),
            Container(
               margin:EdgeInsets.fromLTRB(10,0,10,0),
                child:Column(
                    children:[
                    Padding(
                  padding:EdgeInsets.only(top:30),

                  child:
                          Container(
                                       width:380,
                                      alignment: Alignment.topLeft,
                                      child: Text('Email',style:TextStyle(fontSize:20))
                          )
            ),
            Padding(
               padding:EdgeInsets.all(1),
                child: TextField(
                )
            ),
            Padding(
                padding:EdgeInsets.only(top:18),
                child:
                Container(
                     width:380,
                     //height:50,
                    alignment: Alignment.topLeft,
                    child: Text('Contact',style:TextStyle(fontSize:20))
                )
            ),
            Padding(
                padding:EdgeInsets.all(1),
                child: TextField(
                )
            ),
            Padding(
                padding:EdgeInsets.only(top:18),
                child:
                Container(
                    width:380,
                    alignment: Alignment.topLeft,
                    child: Text('Facebook',style:TextStyle(fontSize:20))
                )
            ),
            Padding(
                padding:EdgeInsets.all(1),
                child: TextField(
                )
            ),
            Padding(
                padding:EdgeInsets.only(top:18),
                child:
                Container(
                    width:380,
                    alignment: Alignment.topLeft,
                    child: Text('Twitter',style:TextStyle(fontSize:20))
                )
            ),
           /* Padding(
                padding:EdgeInsets.all(1),*/
               // child:
                TextField(


                )


            //)
            ]
            )
            )
          ]
        )
      ),
    );
  }
}






