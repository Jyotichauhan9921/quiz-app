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
         title: 'textfield',
         theme: ThemeData(
           primarySwatch: Colors.lightGreen
         ),
        home: HomeApp()
      );
  }
}

class HomeApp extends StatelessWidget{
  //TextEditingController mycontroller=TextEditingController();
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
               child:
                  TextField(
                      //controller: mycontroller,
                 decoration:InputDecoration(
                   border:OutlineInputBorder(),
                   labelText: 'UserName',
                   hintText: 'enter your name'


                 )
             ),
             ),
            Padding(
                padding: EdgeInsets.all(15),
                child:
                  TextField(
                  obscureText: true,
               decoration: InputDecoration(
                 border:OutlineInputBorder(),
                 labelText: 'Password',
                 hintText: 'enter password'
               )
             ),
             ),

             RaisedButton(
               textColor:Colors.white,
               color: Colors.indigo,
               child: Text('Submit',
                   //style:TextStyle(color:Colors.white)
               ),
               onPressed:(){
                 print('I AM PRESSED');
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
}