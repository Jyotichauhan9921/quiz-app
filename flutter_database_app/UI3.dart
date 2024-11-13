import 'package:flutter/material.dart';
void main()
{
  runApp(MyApp());
}


class MyApp extends StatelessWidget{

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        title: 'UI',
        home: Scaffold(
            resizeToAvoidBottomInset: false,
            body:
                    Column(
                        children: [
                          // Image.asset('assets/download.jfif'),
                          Padding(
                              padding:EdgeInsets.only(top:90),
                             child:
                                      CircleAvatar(
                                             radius: 50.0,
                                             backgroundColor:Colors.redAccent,
                                             child: CircleAvatar(
                                                            radius:33.0,
                                                            backgroundColor:Colors.white,
                                                       )
                                              ),
                          ),

                          Padding(
                              padding:EdgeInsets.all(26),
                              child:
                              RichText(
                                      text: TextSpan(
                                                 text:'Sign In/',
                                                  style:TextStyle(fontSize: 34,fontWeight:FontWeight.bold,color:Colors.black),
                                                  children:[
                                                      TextSpan(
                                                        text:'Sign Up',
                                                        style:TextStyle(fontSize: 24,fontWeight:FontWeight.bold,color:Colors.grey)
                                                      )
                                                  ]
                                    ),
                                 // "Sign In/Sign Up",style:TextStyle(fontSize: 34,fontWeight:FontWeight.bold)
                              ),
                          ),
                          Container(
                            // width:380,
                              margin:EdgeInsets.fromLTRB(20,28,20,13),
                            // padding:EdgeInsets.all(13),

                              child: TextField(

                                  decoration: InputDecoration(
                                      hintText:'Username',
                                      hintStyle:TextStyle(fontSize:20,color:Colors.black54),
                                      fillColor:Colors.black12,
                                      filled:true,
                                      enabledBorder:OutlineInputBorder(
                                              borderSide:BorderSide(color:Colors.black12,),
                                               borderRadius:BorderRadius.circular(35),
                                             ),
                                  )
                              )
                          ),
                          Container(
                           // width:380,
                            margin:EdgeInsets.fromLTRB(20,8,20,15),
                            child:
                            TextField(
                                  decoration:InputDecoration(
                                      fillColor:Colors.black12,
                                      filled:true,
                                      hintText:'Password',
                                       hintStyle:TextStyle(fontSize:20,color:Colors.black54),

                                          enabledBorder:  OutlineInputBorder(
                                          borderSide:BorderSide(color:Colors.black12),
                                          borderRadius:BorderRadius.circular(35),
                                        ),
                                )
                            ),
                          ),
                     Container(
                       padding:EdgeInsets.fromLTRB(17,07,0,15),
                        child:Row(
                         // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                          children:[
                            Checkbox(
                                 value:false,
                                 // onChanged(bool value){
                            ),
                            Text('Remember',style:TextStyle(fontSize:20)),
                          ]
                        ),
                     ),

                  Padding(
                    padding:EdgeInsets.all(20),
                     child: SizedBox(
                        height:58,
                        width:380,
                      //  shape:BorderRadius.circular(30),
                        child: RaisedButton(
                              color:Colors.redAccent,
                              shape:RoundedRectangleBorder(
                                borderRadius:BorderRadius.circular(30)
                              ),
                              child: Text('Sign In',style:TextStyle(color:Colors.white,fontSize:20)),
                              onPressed: (){}
                                     ),
                         ),
                  ),

                    Padding(
                              padding:EdgeInsets.only(top:13),
                              child:Text("Forgot Password?",style:TextStyle(fontSize:20)),
                          ),
                        ]
                    )
                )
             );
  }
}
