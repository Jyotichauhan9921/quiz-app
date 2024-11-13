import 'package:flutter/material.dart';

void main()
{
  runApp(MyApp());
}

class MyApp extends StatefulWidget{
  MyAppState createState(){
    return MyAppState();
  }
}
class MyAppState extends State<MyApp> {
  final _text1=TextEditingController();
  final _text2=TextEditingController();
  final _text3=TextEditingController();
  final _text4=TextEditingController();
  final _text5=TextEditingController();
  bool _validate1=false;
  bool _validate2=false;
  bool _validate3=false;
  bool _validate4=false;
  bool _validate5=false;

  String selectedRadio='Male';
  @override
  void initState()
  {
       super.initState();
       selectedRadio='Male';
  }
  setSelectedRadio(String val){
    setState((){
        selectedRadio=val;
    });
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'Registration',
        theme: ThemeData(
          primarySwatch: Colors.indigo,
        ),
        home: Scaffold(
            appBar: AppBar(
              title: Text('Registration'),
            ),
            primary:false,
            backgroundColor:Colors.grey,
            resizeToAvoidBottomInset: false,
            body:
            Padding(
                padding: EdgeInsets.all(10),
                child:
                   Container(
                    decoration:BoxDecoration(
                      border:Border.all(color:Colors.grey,width:2),
                      color:Colors.white,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    margin:EdgeInsets.all(2),
                    child:
                  Column(
                       children: [
                        // Image.asset('assets/download.jfif'),

                         CircleAvatar(
                              radius: 45.0,
                              backgroundImage:
                                  NetworkImage('https://247848-766948-raikfcquaxqncofqfm.stackpathdns.com/wp-content/uploads/2018/05/empire_state.jpg'),

                             // backgroundColor:Colors.transparent ,
                              // image:Icon(Icons.account_circle_rounded),

                         ),
                         /*icon:Icon(Icons.account_circle_rounded),*/
                         Padding(
                           padding:EdgeInsets.all(9),
                             child: TextField(
                                 controller:_text1,
                                 decoration: InputDecoration(
                                 border:OutlineInputBorder(),
                                 prefixIcon: Icon(Icons.person_outline_rounded),
                                 labelText: 'Name',
                                   errorText:_validate1?'Value cannot be empty':null,
                              )
                           )
                         ),
                    Padding(
                    padding:EdgeInsets.all(5),
                    child:
                    TextField(
                          controller: _text2,
                           decoration:InputDecoration(
                             border:OutlineInputBorder(),
                               prefixIcon:Icon(Icons.mail),
                             labelText: 'Email ID',
                             errorText:_validate2?'Email id cannot be empty':null,
                           )
                         ),
                    ),
                  Padding(
                    padding:EdgeInsets.all(5),
                    child:
                    TextField(
                          controller:_text3,
                          obscureText: true,
                           decoration: InputDecoration(
                             border:OutlineInputBorder(),
                             prefixIcon:Icon(Icons.lock_outline),
                             labelText: 'Password',
                             errorText:_validate3?'Password cannot be empty':null,
                           )
                         ),
                  ),
                Padding(
                    padding:EdgeInsets.all(5),
                    child:
                    TextField(
                               controller:_text4,
                               obscureText: true,
                               decoration: InputDecoration(
                                 border:OutlineInputBorder(),
                                 prefixIcon:Icon(Icons.lock),
                                 labelText: 'Confirm Password',
                                 errorText:_validate4?'Confirm your Password':null,
                               ),
                         ),
                ),
                Padding(
                    padding:EdgeInsets.all(5),
                    child:
                    TextField(
                      controller:_text5,
                       decoration: InputDecoration(
                      border:OutlineInputBorder(),
                         prefixIcon:Icon(Icons.phone_android_outlined),
                      labelText: 'Enter Mobile',
                         errorText:_validate5?'Mobile no. needed':null,
                    ),
                     ),
                ),
                       ButtonBar(
                         alignment: MainAxisAlignment.start,
                         children:[

                               Radio(
                                        value: 'Male',
                                        groupValue:selectedRadio,
                                        activeColor:Colors.green,
                                        onChanged: (val){
                                            setSelectedRadio(val);
                                        },
                                  ),
                              Text('Male',style:TextStyle(fontSize:17)),
                              Radio(
                                        value:'Female',
                                        groupValue:selectedRadio,
                                         activeColor:Colors.green,
                                        onChanged: (val){
                                                  setSelectedRadio(val);
                                         },

                                ),
                           Text('Female',style:TextStyle(fontSize:17)),
                       ]
                       ),
                         /*Radio(
                           title:Text('male'),
                           value:'male',

                         ),*/
                         RaisedButton(
                           color:Colors.indigo,
                           child: Text('Register',style:TextStyle(color:Colors.white)),
                           onPressed: (){
                             print('clicked');
                             setState((){
                               _validate1= _text1.text.isEmpty? true:false;
                               _validate2=_text2.text.isEmpty?true : false;
                               _validate3=_text3.text.isEmpty?true : false;
                               _validate4=_text4.text.isEmpty?true : false;
                               _validate5=_text5.text.isEmpty?true : false;

                             });
                           }
                         )
                       ]
            )

           )
                )
        )
    );
  }
}
