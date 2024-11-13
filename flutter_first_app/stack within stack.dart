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
      appBar: AppBar(title: Text("Stack within Stack Widget")),
      body: Center(
          child: Stack(

              children: [
                Positioned(
                top:100,
                child:  Text('Stack #1',style: TextStyle(color:Colors.white,fontSize: 20))
                ),

                Positioned(
                 top: 150.0, child:  Text('Stack #2', style:TextStyle(color:Colors.white,fontSize:20)
                    )
                ),


                Positioned(
                        top: 200.0,
                        child: Container(
                         height: 220,
                         width:220,
                         color:Colors.green,
                         child:Stack(
                            children:[
                               Positioned(
                                   child: Text('Stack #3',style:TextStyle(color:Colors.white,fontSize:20)
                                   )
                               )
                            ]
                         )


                        )
                )
              ]
          )
      ),
    );
  }
}






