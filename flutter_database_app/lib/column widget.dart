import 'package:flutter/material.dart';
void main()
{
   runApp(MyApp());
}
class MyApp extends StatefulWidget{
     MyAppState createState()=>MyAppState();

}

class MyAppState extends State<MyApp>
{
   bool variable1=false;
   bool variable2=false;
   @override
   Widget build(BuildContext context)
   {
    return MaterialApp(
        theme: ThemeData(
            primarySwatch:Colors.grey
        ),
        home: Scaffold(
              appBar:AppBar(
              title:Text('Check Buttons')
             ),
        body:
           Row(
                children:[
                             Checkbox(
                                  value:variable1,
                                  checkColor:Colors.blue,
                                  activeColor: Colors.white,
                                  onChanged: (val){
                                    setState((){
                                       variable1=val;
                                    });
                                  }
                              ),
                              Text('Red',style:TextStyle(fontSize: 20)),
                              Checkbox(
                                value:variable2,
                                checkColor: Colors.blue,
                                  activeColor: Colors.white,
                                onChanged:(val){
                                  setState((){
                                    variable2=val;
                                  });
                                }
                              ),
                             Text('yellow',style:TextStyle(fontSize: 20)),
                       ]
         )
     )
    );
    }
}