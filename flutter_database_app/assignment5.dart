import'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        resizeToAvoidBottomInset:false,
          body: Column(
            children:[
                   Container(
                         width:411,
                         height:320,
                         decoration:BoxDecoration(),
                      child: Stack(
                          children:[
                            Container(
                                width:411,
                                height:254,
                                 padding:EdgeInsets.only(top:20),
                                 decoration:BoxDecoration(
                                 // border:Border.all(),
                                  //icon:Icon(Icons.settings)
                                  color:Colors.yellow,
                                ),
                               child:
                               Row(
                                 children:[
                                                CircleAvatar(
                                                    radius:45.0,
                                                    backgroundImage: AssetImage('assets/ben.jfif'),
                                                 ),
                                  Container(
                                    padding:EdgeInsets.only(top:52),
                                    width:300,
                                    height:200,
                                    child: ListTile(
                                     //contentPadding: EdgeInsets.fromLTRB(2,31, 5, 0),
                                     title:Text('TAIMOOR SIKANDER',style:TextStyle(fontSize: 28,fontWeight:FontWeight.bold)),
                                     subtitle: Text('taimoor_sikander',style:TextStyle(fontSize: 20)),
                                   ),
                                  )
                                 ]),

                               /* Row(
                                    children:[

                                        CircleAvatar(
                                          radius:50.0,
                                          backgroundImage: AssetImage('assets/ben.jfif'),
                                        ),

                                      Padding(
                                          padding:EdgeInsets.only(left:4),
                                          child: ListTile(
                                              title:Text('TAIMOOR SIKANDER',style:TextStyle(fontSize: 32,fontWeight:FontWeight.bold)),
                                              subtitle: Text('taimoor_sikander'),
                                          )
                                      ),
                                     *//* Padding(
                                          padding:EdgeInsets.all(2),
                                          child: Text('NEW YORK,USA',style:TextStyle(fontSize: 17))
                                      )*//*

                                    ]
                                )*/

                            ),
                            Positioned(
                                top:190,
                                left:30,
                                child: Container(
                                    width:160,
                                    height:100,
                                    decoration:BoxDecoration(
                                      //border:Border.all(),
                                      color:Colors.yellow,
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey,
                                          blurRadius: 4,
                                          offset: Offset(4, 8), // Shadow position
                                        ),
                                      ]

                                    ),

                                    child:
                                    Column(
                                        children:[
                                          Icon(Icons.money),
                                    Padding(
                                        padding:EdgeInsets.only(top:8),
                                        child:
                                          Text('\$123',style:TextStyle(fontSize:26,fontWeight: FontWeight.w800)),
                                    ),
                                          Text('Balance',style:TextStyle(fontSize:23))
                                        ]
                                    )
                                )
                            ),
                            Positioned(
                                top:190,
                                left:220,
                                child: Container(
                                    width:160,
                                    height:100,
                                    decoration:BoxDecoration(
                                     // border:Border.all(),
                                      color:Colors.yellow,
                                        boxShadow: [
                                          BoxShadow(
                                            color: Colors.grey,
                                            blurRadius: 4,
                                            offset: Offset(4, 8), // Shadow position
                                          ),
                                        ]

                                    ),
                                    child: Column(
                                        children:[
                                          Icon(Icons.book_online),
                                          Padding(
                                             padding:EdgeInsets.only(top:8),
                                             child: Text('12',style:TextStyle(fontSize:26,fontWeight: FontWeight.w800)),
                                          ),
                                          Text('Bookings',style:TextStyle(fontSize:23))
                                        ]
                                    )
                                )
                            ),

                          ]
                      ),
                   ),

                   Container(
                           margin:EdgeInsets.fromLTRB(20, 2, 20, 2),
                           decoration:BoxDecoration(

                        ),
                       child:Column(
                           mainAxisAlignment: MainAxisAlignment.spaceBetween,
                           children:[

                                Container(
                                     alignment: Alignment.topLeft,
                                     child:
                                     Text('Full Name',style:TextStyle(fontSize:15)),
                                 ),
                                 TextField(
                                   decoration:InputDecoration(
                                     prefixIcon: Icon(Icons.person_outline_rounded)
                                   )
                                 ),

                                 Container(
                                     alignment: Alignment.topLeft,
                                     child: Text('E-mail',style:TextStyle(fontSize:15))
                                 ),

                               TextField(
                                   decoration:InputDecoration(
                                       prefixIcon: Icon(Icons.mail)
                                   )
                                 ),

                                 Container(
                                     alignment: Alignment.topLeft,
                                     child: Text('Phone Number',style:TextStyle(fontSize:15))
                                 ),

                            TextField(
                                decoration:InputDecoration(
                                    prefixIcon: Icon(Icons.phone)
                                )
                                 ),

                                 Container(
                                     alignment: Alignment.topLeft,
                                     child: Text('Password',style:TextStyle(fontSize:15))
                                 ),

                             TextField(
                                 decoration:InputDecoration(
                                     prefixIcon: Icon(Icons.lock_outline)
                                 )
                             ),
                             SizedBox(
                              width:200,

                             child:
                                   RaisedButton(
                                             color:Colors.yellow,
                                            child: Text('UPDATE',style:TextStyle(fontSize: 20))
                             )
                             )
                             //)
                           ]
                       )
                     ),
            ]
          )
      ),
    );
  }
}






