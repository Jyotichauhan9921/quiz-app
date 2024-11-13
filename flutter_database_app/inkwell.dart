import 'package:flutter/material.dart';
void main()
{
  runApp(App());
}
class App extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        theme:ThemeData(
            primarySwatch: Colors.green
        ),
        home: Scaffold(
                 appBar: AppBar(
                                 title: Text('Inkwell Widget'),
                             ),
                  body:
                            Center(
                                       child: MyApp(),
                                ),
    ),
    );
  }
}
class MyApp extends StatefulWidget{
  MyAppState createState()=>MyAppState();  //should be written this way otherwise gives error

}
class MyAppState extends State<MyApp>
{
  double sideLength = 100;
  double side2=200;//taking int gives error
  @override
  Widget build(BuildContext context)
  {
     return  AnimatedContainer(   //maybe container also resizes but instantly not slowly like animated one on tap but condition is that you must give variable to width and height

                         width:sideLength,            //hardcoding values doesnt work
                     height:side2,
                       /*width:100,
                       height:100,*/
                   duration: Duration(seconds: 5),
                    curve:Curves.easeIn,
                     child: Material(  //always color of material widget is visible as it is on the container
                                      color:Colors.amberAccent, ///shows only when we used child Inkwell
                                      child: InkWell(
                                                     onTap: (){
                                                     setState((){
                                                                  /*width:200;
                                                                   height:200;*/
                                                    //  sideLength == 100 ? sideLength = 200 : sideLength = 50;   working
                                                       side2=100;
                                                       sideLength=100;
                                                           });
                                                       }
                                               )
                                      )
                                 );

  }
}