import 'package:flutter/material.dart';
void main () => runApp (MyApp());
class MyApp extends StatelessWidget {
  // It is root widget of the application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: MyHomePage()
    );
  }
}
class MyHomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("IndexedStack Widget")),
      body: Center(
          child: IndexedStack(
              index: 0,

              children: [
                Container(
                    height:300,
                    width:400,
                    color:Colors.green,
                    child:Center(
                        child: Text('Top Widget: Green',style: TextStyle(color:Colors.white,fontSize: 20))
                    )
                ),

                  Container(
                      height:100,
                      width: 150,
                      color: Colors.blue,
                      child: Text('Middle Widget', style:TextStyle(color:Colors.white,fontSize:20)
                      )
                  ),


                    Container(
                        height:100,
                        width: 150,
                        color:Colors.orange,
                        child:Center(
                            child: Text('Bottom Widget',style:TextStyle(color:Colors.white,fontSize:20)
                            ))
                    )

              ]
          )
      ),
    );
  }
}





