import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title: 'Assignment',
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: MyHomeApp(),

    );
  }
}

class MyHomeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
      appBar: AppBar(
        title:Text('demo'),
      ),
        drawer: Drawer(
            child:
              ListView(
                  children:[
                    DrawerHeader(
                     decoration:BoxDecoration(
                      /* image: new DecorationImage(
                                   fit:BoxFit.cover,
                                  image:AssetImage('lib/'),
                       )*/
                       color:Colors.indigo,

                    ),
                        child:  Column(
                          children:[
                            Container(
                                alignment:Alignment.bottomLeft,
                                child: Icon(Icons.account_circle_rounded,size:70),

                            ),
                               Container(
                                   alignment: Alignment.bottomLeft,
                                   child: Text('Ritika Chauhan',style:TextStyle(fontSize:17, color:Colors.white)),
                               ),
                               Container(
                                   alignment: Alignment.bottomLeft,
                                 child: Text('r.chauhan@gmail.com',style:TextStyle(fontSize:17, color:Colors.white))
                               )
                        ]
                       )

                      /*Stack(
                          children:[

                            Positioned(
                              bottom: 12.0,
                              left:12.0,
                              child:Text('r.chauhan@gmail.com',style:TextStyle(fontSize:17, color:Colors.white))
                            ),
                            Positioned(
                              bottom:32.0,
                              left:12.0,
                              child:Text('Ritika Chauhan',style:TextStyle(fontSize:17, color:Colors.white)
                            )
                            ),
                            Positioned(
                              bottom:54,
                              left:12.0,
                              child: Expanded(
                                   flex:4,
                                  child: Icon(Icons.account_circle_rounded),
                              )
                            ),
                          ]
                        )*/
                ),
                ListTile(
                  title: Row(
                   children:[
                     Icon(Icons.dashboard),
                     Padding(
                            padding: EdgeInsets.only(left: 8),
                            child: Text('Dashboard'),
                    )
                ]
                )
                  //: Icon(Icons.dashboard),
                ),
                ListTile(
                  title:Row(
                      children:[
                            Icon(Icons.cloud_upload),
                         Padding(
                           padding:EdgeInsets.only(left:8),
                           child:Text('Saved Vehicles'),
                         )
                          ]
                )
                  //icon:Icon(Icons.cloud_upload)
                ),
                ListTile(
                  title:
                    Row(
                    children:[
                      Icon(Icons.album),
                    Padding(
                        padding:EdgeInsets.only(left:8),
                         child: Text('Status Overview'),
                    )
               ]
                )
                  //icon:Icon(Icons.album),
                ),
                Divider(),

                ListTile(
                  title:  Text('My Account',style:TextStyle(color:Colors.grey))
                ),
                ListTile(
                  title: Row(
                    children:[

                         Icon(Icons.account_circle_rounded),
                         Padding(
                           padding:EdgeInsets.all(8),
                           child: Text('My Account'),
                         )
                    ]
                  )
                ),
                    ListTile(
                        title: Row(
                            children:[

                              Icon(Icons.logout),
                              Padding(
                                padding:EdgeInsets.all(8),
                                child: Text('Logout'),
                              )

                            ]
                        )
                    ),
                  Divider(),
                ListTile(
                  title: Row(
                    children:[
                      Icon(Icons.settings),
                    Padding(
                        padding:EdgeInsets.only(left:8),
                         child: Text('Settings')
                    )
                ]
                  )
                ),
               Divider()
               /* ListTile(
                  title: text('')
                )*/
               ]
              )

        )
    );
  }
}