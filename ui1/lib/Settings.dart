import 'package:flutter/material.dart';

void main()=>runApp(SettingsPage());

class SettingsPage extends StatefulWidget{
     _SettingsPage createState()=>_SettingsPage();
}

class _SettingsPage extends State<SettingsPage>{

  @override
   Widget build(BuildContext context){
    return MaterialApp(
        home: Scaffold(
                 body:Column(
                         children:[
                                    header(),
                                    content()
                                 ]
                           )
                     )
    );
  }
}

  Widget header(){
     return Container(
       height:100,
       color:Colors.white,
       child:Row(
            children:[
              Padding(
                    padding:EdgeInsets.only(left:12,top:50),
                    child: Icon(Icons.arrow_back_outlined),
              ),
              Padding(
                padding:EdgeInsets.only(left:25,top:50),
                child: Text('SETTINGS',style:TextStyle(fontSize:32,fontWeight:FontWeight.w700)),
              )

            ]
       )

     );
  }

  Widget content() {
    int _value1=1,_value2=1;
    return Column(
        children: [
          Padding(
             padding: EdgeInsets.only(top: 15),
             child: Container(
                  width: 370,
                  height: 300,
                  decoration: BoxDecoration(
                                             borderRadius: BorderRadius.circular(2.0),
                                             color: Colors.white,
                                            //  border:Border.all(color:Colors.grey),
                                             boxShadow: [
                                                        BoxShadow(
                                                            color:Colors.grey,
                                                            offset:Offset(2.0, 2.0),
                                                            blurRadius:2.0,
                                                        )
                                                 ]
                                            ),
                  child: Column(
                      children: [
                        Padding(
                             padding: EdgeInsets.only(top:20),
                             child: Align(
                                    alignment: Alignment.center,
                                     child: Text('Access to the location',style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700))
                                ),
                           ),
                    Padding(
                        padding: EdgeInsets.only(top: 20),
                        child: Text('For tracking completed adventures we need access to your current location.',style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)
                    ),

                    Padding(
                      padding: EdgeInsets.only(top:15),
                      child: Row(
                          children: [
                            Padding(
                                padding:EdgeInsets.only(left:20),
                                child:Text('Always allow', style: TextStyle(fontSize: 20),)
                            ),
                            Padding(
                                padding:EdgeInsets.only(left:150),
                                child:Radio(
                                    value:1,
                                    groupValue:_value1,
                                    activeColor: Colors.black,
                                    onChanged:(int value){
                                     /*setState((){
                                       _value=value;
                                     });*/
                                      _value1=value;
                                    }
                                )
                            )
                          ]
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 13),
                        child: Row(
                            children: [
                                Padding(
                                     padding:EdgeInsets.only(left:20),
                                     child:Text('Only while using the app', style: TextStyle(fontSize: 20),)
                                ),
                              Padding(
                                  padding:EdgeInsets.only(left:50),
                                  child:Radio(
                                      value:2,
                                      groupValue:_value1,
                                      activeColor: Colors.black,
                                      onChanged:(int value){
                                        /*setState((){
                                       _value=value;
                                     });*/
                                        _value1=value;
                                      }
                                  )
                              )
                            ]
                        )
                    ),
                    Padding(
                        padding: EdgeInsets.only(top:13),
                        child: Row(
                            children: [
                               Padding(
                                   padding:EdgeInsets.only(left:20),
                                   child:Text('Never allow', style: TextStyle(fontSize: 20),)
                               ),
                              Padding(
                                  padding:EdgeInsets.only(left:162),
                                  child:Radio(
                                      value:3,
                                      groupValue:_value1,
                                      activeColor: Colors.black,
                                      onChanged:(int value){
                                        /*setState((){
                                       _value=value;
                                     });*/
                                        _value1=value;
                                      }
                                  )
                              )
                            ]
                        )
                    ),
                    ]
                  ),
                    ),
          ),





                    //**************** next container*********************************88

                   Padding(
                      padding:EdgeInsets.only(top:15),
                      child:Container(
                          width: 370,
                          height: 240,
                          decoration:BoxDecoration(
                                             borderRadius: BorderRadius.circular(2.0),
                                             color:Colors.white,
                                            // border: Border.all(color:Colors.grey),
                                             boxShadow:[
                                               BoxShadow(
                                                 color:Colors.grey,
                                                 offset: Offset(2.0,2.0),
                                                 blurRadius: 2.0,
                                               )
                                             ],
                                             ),
                        child:Column(
                            children:[
                              Padding(
                                padding: EdgeInsets.only(top: 20),
                                child: Align(
                                    alignment: Alignment.center,
                                    child: Text('Push-notifications', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700))
                                ),
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 20),
                                  child: Text('We send you push-notifications,if there are adventures near you.', style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)

                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                      children: [
                                        Padding(
                                            padding:EdgeInsets.only(left:20),
                                            child:Text('Always Allow', style: TextStyle(fontSize: 20),)
                                        ),
                                        Padding(
                                            padding:EdgeInsets.only(left:150),
                                            child:Radio(
                                                value:1,
                                                groupValue:_value2,
                                                activeColor: Colors.black,
                                                onChanged:(int value){
                                                  /*setState((){
                                       _value=value;
                                     });*/
                                                  _value2=value;
                                                }
                                            )
                                        )
                                      ]
                                  )
                              ),
                              Padding(
                                  padding: EdgeInsets.only(top: 15),
                                  child: Row(
                                      children: [
                                        Padding(
                                            padding:EdgeInsets.only(left:20),
                                            child:Text('Never allow', style: TextStyle(fontSize: 20),)
                                        ),
                                        Padding(
                                            padding:EdgeInsets.only(left:162),
                                            child:Radio(
                                                value:2,
                                                groupValue:_value2,
                                                activeColor: Colors.black,
                                                onChanged:(int value){
                                              /*    setState((){
                                       _value=value;
                                     });*/
                                               //   _value2=value;
                                                }
                                            )
                                        )
                                      ]
                                  )
                              ),
                            ]
                        )
                    ),
                    ),
        ]

    );
  }



