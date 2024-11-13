import 'package:flutter/material.dart';
void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{

  //TabController _tabController=TabController(length:3);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
            body:  Column(
                children:[
                  Container(
                    width:411,
                     height:250,
                     //margin:EdgeInsets.all(25),
                      padding: EdgeInsets.only(top:10),
                      decoration:BoxDecoration(
                        color:Colors.blueAccent
                      ),//for extra spacing from top
                      child:
                           Column(
                             children:[
                                 ListTile(
                                       contentPadding: EdgeInsets.fromLTRB(0, 20, 40.0, 0.0),
                                       trailing: Icon(Icons.donut_small_rounded,size:38,color:Colors.white)
                                        ),
                                        Icon(Icons.account_circle,size:120,color:Colors.white),
                                       Padding(
                                         padding:EdgeInsets.only(top:5),
                                         child: Text('Jimmy Baba',style:TextStyle(fontSize: 25,color:Colors.white)),
                                       )
                                     ]
                                 )
                          ),
                         Container(
                                      width: 411,
                                      height:420,
                                      child:
                                      Column(
                                        children:[
                                                   /* Container(
                                                      //height:
                                                     child:*/
                                                     DefaultTabController(
                                                     length:3,
                                                     child: Column(
                                                          children:[
                                                              Container(
                                                                width:411,
                                                               height:40,
                                                               child: TabBar(
                                                              // controller: _tabController,
                                                                 labelColor:Colors.blueAccent,
                                                                 unselectedLabelColor:Colors.grey,
                                                                tabs:[
                                                                  Tab(child:Text('PROFILE',style:TextStyle(fontSize:16))),
                                                                  Tab(child:Text('CHATS',style:TextStyle(fontSize:16))),
                                                                  Tab(child:Text('CONTACTS',style:TextStyle(fontSize:16)))
                                                                    ]
                                                               ),
                                                              ),

                                                           Container(
                                                               width:411,
                                                               height:300,
                                                            child:TabBarView(
                                                              //controller: _tabController,
                                                                children:[
                                                                  Icon(Icons.notifications),
                                                                  GridView.count(
                                                                       crossAxisCount:3,
                                                                       crossAxisSpacing: 0,
                                                                        mainAxisSpacing: 0,
                                                                         children:[
                                                                                  Container(
                                                                                    height:40,
                                                                                    padding:EdgeInsets.only(top:20),
                                                                                    decoration:BoxDecoration(
                                                                                      border:Border.all(color:Colors.grey),
                                                                                     // color:Colors.grey
                                                                                    ),
                                                                                      child:  Column(
                                                                                             children:[
                                                                                                         Icon(Icons.chat,color:Colors.grey,size:35),
                                                                                                         Text('Chats',style:TextStyle(color:Colors.grey,fontSize:15))
                                                                                             ]
                                                                                      )
                                                                                  ),
                                                                           Container(
                                                                               height:40,
                                                                               padding:EdgeInsets.only(top:20),
                                                                               decoration:BoxDecoration(
                                                                                   border:Border.all(color:Colors.grey),

                                                                                  // color:Colors.grey
                                                                               ),
                                                                               child:  Column(
                                                                                   children:[
                                                                                     Icon(Icons.group_add,color:Colors.grey,size:35),
                                                                                     Text('Groups',style:TextStyle(color:Colors.grey,fontSize:15))
                                                                                   ]
                                                                               )
                                                                           ),
                                                                           Container(
                                                                               height:40,
                                                                               padding:EdgeInsets.only(top:20),
                                                                               decoration:BoxDecoration(
                                                                                   border:Border.all(color:Colors.grey),
                                                                                  // color:Colors.grey
                                                                               ),
                                                                               child:  Column(
                                                                                   children:[
                                                                                     Icon(Icons.edit,color:Colors.grey,size:35),
                                                                                     Text('Status',style:TextStyle(color:Colors.grey,fontSize:15))
                                                                                   ]
                                                                               )
                                                                           ),
                                                                           Container(
                                                                               height:40,
                                                                               padding:EdgeInsets.only(top:20),
                                                                               decoration:BoxDecoration(
                                                                                   border:Border.all(color:Colors.grey),
                                                                                  // color:Colors.grey
                                                                               ),
                                                                               child:  Column(
                                                                                   children:[
                                                                                     Icon(Icons.person,color:Colors.grey,size:35),
                                                                                     Text('Contacts',style:TextStyle(color:Colors.grey,fontSize:15))
                                                                                   ]
                                                                               )
                                                                           ),
                                                                           Container(
                                                                               height:40,
                                                                               padding:EdgeInsets.only(top:20),
                                                                               decoration:BoxDecoration(
                                                                                   border:Border.all(color:Colors.grey),
                                                                                  // color:Colors.grey
                                                                               ),
                                                                               child:  Column(
                                                                                   children:[
                                                                                     Icon(Icons.mail_outline,color:Colors.grey,size:35),
                                                                                     Text('Invite',style:TextStyle(color:Colors.grey,fontSize:15))
                                                                                   ]
                                                                               )
                                                                           ),
                                                                           Container(
                                                                               height:40,
                                                                               padding:EdgeInsets.only(top:20),
                                                                               decoration:BoxDecoration(
                                                                                   border:Border.all(color:Colors.grey),
                                                                                   //color:Colors.grey
                                                                               ),
                                                                               child:  Column(
                                                                                   children:[
                                                                                     Icon(Icons.settings,color:Colors.grey,size:35),
                                                                                     Text('Settings',style:TextStyle(color:Colors.grey,fontSize:15))
                                                                                   ]
                                                                               )
                                                                           ),

                                                                         ]
                                                                  ),
                                                                  Icon(Icons.cloud_upload),


                                                                ]
                                                               )
                                                           ),
                                                                   ]
                                                                )
                                                    ),
                                                   // ),
                                         Padding(
                                           padding: EdgeInsets.only(top:5),
                                            child:
                                          FloatingActionButton(
                                                 //color:Colors.yellow,
                                                 backgroundColor: Colors.yellow,
                                                 child:Icon(Icons.add),
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