import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return MaterialApp(
        title: 'buttons',
        theme: ThemeData(
            primarySwatch: Colors.lightGreen
        ),
        home: HomeApp()
    );
  }
}

class HomeApp extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
    return Scaffold(

        appBar: AppBar(
            title:Text('login')
        ),
        body:
        Padding(
            padding: EdgeInsets.all(15),
            child:
            Column(
              //mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [

                  Padding(
                    padding: EdgeInsets.all(15),
                    child: FlatButton(
                        child: Text('login',style:TextStyle(fontSize:20.0)),
                        onPressed: (){
                        print('flat button clicked');
                      },
                      )

                  ),


                  RaisedButton(
                      textColor:Colors.white,
                      color: Colors.indigo,
                      child: Text('Submit',
                        //style:TextStyle(color:Colors.white)
                      ),
                      onPressed:(){
                        print('Raised button is clicked ');
                        /* return AlertDialog(
                   title: Text('Alert message'),
                   content: Text(mycontroller.text),
                 );*/
                      }
                  )
                ]
            )
        )
    );
  }
