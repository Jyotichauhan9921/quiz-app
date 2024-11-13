import 'package:flutter/material.dart';
void main () {
  runApp (MyApp());
}
class MyApp extends StatelessWidget {
  // It is root widget of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: DefaultTabController(
                length: 3,
                child:  Scaffold(
                  appBar: AppBar(
                           title: Text('Tabs Demo'),
                           bottom:  TabBar(
                                        tabs: [
                                         Tab(icon: Icon(Icons.directions_car)),
                                         Tab(icon: Icon(Icons.directions_transit)),
                                         Tab(icon: Icon(Icons.directions_bike))
                                              ],
                                          )
                               ),
                  body: TabBarView(
                    children:[
                          Text('car',style:TextStyle(fontSize:50)),
                          Icon(Icons.directions_transit),
                          Icon(Icons.directions_bike),
                    ],
                  ),

                ),

        ),
    );
  }
}







