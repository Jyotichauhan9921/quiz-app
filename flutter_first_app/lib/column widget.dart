import 'package:flutter/material.dart';
//import 'package:flutter/painting.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
      return MaterialApp(
        title: 'fourth demo',
        theme: ThemeData(
           primarySwatch: Colors.red
        ),
        home: HomeApp(),

      );
  }
}

class HomeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
      return Scaffold(
       appBar: AppBar(
        title: Text('column widget'),
      ),
       body: Column(
         mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
           Container(
               /*width:80,
               height:50,*/
               decoration:BoxDecoration(
                       borderRadius: BorderRadius.circular(10),
                       color:Colors.black12,
                     ),
               child:
                   Center(
                    child: Text('okay',style:TextStyle(fontSize:30, fontStyle:FontStyle.italic,))
                   )
                ),
           Container(
            /* width:80,
             height:50,*/
             decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: Colors.black12,
                         ),
              child:  Center(
                   child: Text('2',style:TextStyle(fontSize:30, fontStyle:FontStyle.italic,))
               )
           ),
          Container(
              /* width:80,
               height:50,*/
               decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(10),
                            color: Colors.black12,
                           ),
              child: Center(
                  child: Text('3',style:TextStyle(fontSize:30, fontStyle:FontStyle.italic,))
              )
          )
        ]
      )
      );
  }
}