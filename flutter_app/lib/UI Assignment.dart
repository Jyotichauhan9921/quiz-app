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

      body:
             Padding(
               padding:EdgeInsets.all(40),
               child: Column(
                 children:[
                  Padding(
                    padding: EdgeInsets.all(10),
                    child:
                        Container(
                          alignment: Alignment.topLeft,
                          child: Text('Enter Name',style: TextStyle(fontSize:20)),
                        )
                  ),
                   TextField(
                     decoration: InputDecoration(
                           border: OutlineInputBorder(),
                     )
                   ),
                  Padding(
                    padding:EdgeInsets.all(10),
                    child:   Container(
                     alignment: Alignment.topLeft,
                     child:Text('Enter Username',style: TextStyle(fontSize:20)),
                   )
                  ),
                   TextField(
                           decoration:InputDecoration(
                             border: OutlineInputBorder(),
                           )
                   ),
                 Padding(
                   padding: EdgeInsets.all(10),
                   child:
                         Container(
                              alignment:Alignment.topLeft,
                              child: Text('Password',style:TextStyle(fontSize:20))
                         )
                 ),
                  /* Padding(
                     padding: EdgeInsets.all(10),
                     child:*/
                         TextField(
                             obscureText: true,
                         decoration: InputDecoration(
                               border: OutlineInputBorder(),
                         )
                     ),
                  //),
                   Padding(
                     padding:EdgeInsets.all(10),
                     child:
                              Container(
                                alignment:Alignment.topLeft,
                                child:
                                 Text('Repeat password',style:TextStyle(fontSize:20)),
                              ),
                        ),
                        TextField(
                          obscureText: true,
                          decoration: InputDecoration(
                            border: OutlineInputBorder(),
                          ),
                        ),
                   RaisedButton(
                     color:Colors.blueAccent,
                     child: Text('Register'),
                     onPressed: (){
                       print('registered');
                     }
                   ),


                 ]
               )
             )



    );
  }
}