import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomDialogBox extends StatefulWidget{
  _CustomDialogBoxState createState()=>_CustomDialogBoxState();        //write about stateful widget
}

class _CustomDialogBoxState extends State<CustomDialogBox>{
  @override
  Widget build(BuildContext context){
    return Dialog(
        shape:RoundedRectangleBorder(
          borderRadius:BorderRadius.circular(12.0),
        ),
        child: Container(
            height:450,                     //to resize dialog box
            decoration:BoxDecoration(
              borderRadius: BorderRadius.circular(12.0),
            ),
            child: Column(
                children:[
                  Container(
                    height:180,
                    child: Image.asset('assets/offers.png'),
                    //Image.asset(),
                  ),
                  Container(
                      child:Column(
                          children:[
                            Padding(
                              padding:EdgeInsets.only(top:20),
                              child:Text('Special Offer',style:TextStyle(fontSize:30,fontWeight:FontWeight.w500)),
                            ),
                            Divider(
                              color:Colors.red,
                              thickness:3.0,
                              //height:10.0,
                              indent:125.0,
                              endIndent:125.0
                            ),
                            Padding(
                              padding:EdgeInsets.only(top:15),
                              child: Text('Get Exclusive Offers',style:TextStyle(fontSize:24,fontWeight:FontWeight.w400)),
                            ),
                         Padding(
                            padding:EdgeInsets.fromLTRB(12,9,12,0),
                            child:Align(
                             alignment:Alignment.center,
                              child: Text('Get a discount on all our products in your next two orders',style:TextStyle(fontSize:18),
                                           textAlign:TextAlign.center),
                            ),
                         ),
                            Padding(
                                 padding:EdgeInsets.only(top:24),
                                 child:Container(
                                         width:110,
                                         height:40,
                                         child: FlatButton(
                                             color: Colors.yellow,
                                             textColor: Colors.white,
                                             child:Text('View Offer',style:TextStyle(fontSize:16)),
                                             onPressed:(){}
                                         )
                                )

                            )
                          ]
                      )
                  )
                ]
            )
        )
    );
  }
}