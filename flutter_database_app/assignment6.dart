import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
           body:  Column(
             children:[
                        Container(
                             width:411,
                             height:365,
                            padding: EdgeInsets.only(top:25),
                            decoration:BoxDecoration(
                             gradient:LinearGradient(
                               begin:Alignment.topLeft,
                               end:Alignment.bottomRight,
                               colors:[Colors.pinkAccent,Colors.red]
                             )
                            ),
                             child:Column(
                               children:[
                                     ListTile(
                                                 leading: Icon(Icons.settings, size:35,color:Colors.white60),
                                                 trailing: Icon(Icons.notifications_none,size:35,color:Colors.white60),
                                     ),
                                    CircleAvatar(
                                           radius:50.0,
                                           backgroundImage:AssetImage('assets/POKEMON.png'),
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(top:20),
                                     child:
                                         Text('Jonny Lulu',style:TextStyle(fontSize: 25,color:Colors.white,fontWeight: FontWeight.w500))
                                    ),
                                    Text('China',style:TextStyle(fontSize: 20,color:Colors.white60,fontWeight: FontWeight.w400)),
                                    /*Row(
                                      children:[
                                                    Padding(
                                                      padding: EdgeInsets.only(left:20),
                                                      child: Text('233')
                                                    ),
                                                 Padding(
                                                     padding: EdgeInsets.only(left:120),
                                                       child: Text('349')
                                             ),

                                      ]
                                    )*/
                                 ListTile(
                                   contentPadding: EdgeInsets.fromLTRB(50.0, 27.0, 50.0, 0.0),

                                   leading: Column(
                                         children:[
                                           Text('233',style:TextStyle(fontSize: 22,color:Colors.white60,fontWeight:FontWeight.w500)) ,
                                           Text('Follows',style:TextStyle(fontSize: 20,color:Colors.white60,fontWeight:FontWeight.w500))
                                         ]
                                   ),
                                   trailing:  Column(
                                       children:[
                                         Text('349',style:TextStyle(fontSize: 22,color:Colors.white60,fontWeight:FontWeight.w500)) ,
                                         Text('Following',style:TextStyle(fontSize: 20,color:Colors.white60,fontWeight:FontWeight.w500))
                                       ]
                                   ),
                                 )
                               ]
                             )
                        ),
                        Container(
                                     child: Column(
                                                children:[
                                                  ListTile(
                                                      leading:Icon(Icons.collections),
                                                       title: Text('Shots',style:TextStyle(fontSize: 20,color:Colors.grey,fontWeight:FontWeight.w500)),
                                                       trailing: Wrap(
                                                            children:[
                                                                Text('35',style:TextStyle(fontSize: 20,color:Colors.grey,fontWeight:FontWeight.w500)),
                                                                Icon(Icons.keyboard_arrow_right)
                                                            ]
                                                       )
                                                  ),
                                                 ListTile(
                                                    leading:Icon(Icons.favorite),
                                                     title:Text('Likes',style:TextStyle(fontSize: 20,color:Colors.grey,fontWeight:FontWeight.w500)),
                                                     trailing: Wrap(
                                                       children:[
                                                         Text('236',style:TextStyle(fontSize: 20,color:Colors.grey,fontWeight:FontWeight.w500)),
                                                         Icon(Icons.keyboard_arrow_right),
                                                       ]
                                                     )
                                                  ),
                                                  ListTile(
                                                      leading:Icon(Icons.hourglass_bottom_sharp),
                                                      title:Text('Buckets',style:TextStyle(fontSize: 20,color:Colors.grey,fontWeight:FontWeight.w500)),
                                                      trailing: Wrap(
                                                          children:[
                                                            Text('26',style:TextStyle(fontSize: 20,color:Colors.grey,fontWeight:FontWeight.w500)),
                                                            Icon(Icons.keyboard_arrow_right),
                                                          ]
                                                      )
                                                  ),
                                                  ListTile(
                                                      leading:Icon(Icons.bookmarks_sharp),
                                                      title:Text('Tags',style:TextStyle(fontSize: 20,color:Colors.grey,fontWeight:FontWeight.w500)),
                                                      trailing: Wrap(
                                                          children:[
                                                            Text('100',style:TextStyle(fontSize: 20,color:Colors.grey,fontWeight:FontWeight.w500)),
                                                            Icon(Icons.keyboard_arrow_right),
                                                          ]
                                                      )
                                                  )
                                                ]
                                     )
                        )
            ]
        )
        )
    );
  }
}