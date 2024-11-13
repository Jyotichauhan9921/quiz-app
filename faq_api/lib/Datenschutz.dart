//import 'package:explodis/widgets/common_widgets.dart';
import 'package:flutter/material.dart';

void  main()=>runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Datenschutz(),
    );
  }
}

class Datenschutz extends StatefulWidget{
  _Datenschutz createState()=>_Datenschutz();
}

class _Datenschutz extends State<Datenschutz>{

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context){
    return SafeArea(
        child:Scaffold(
            body:Column(
                children:[

                  content()
                ]
            )
        )
    );
  }
}

Widget content(){
  return Padding(
      padding:EdgeInsets.all(16),
      child:Container(
          width:double.maxFinite,
          child:Card(
              child:Column(
                  children:[
                    Padding(
                        padding:EdgeInsets.fromLTRB(24,36,24,0),
                        child: Text('Headline of chapter 1 – payment conditions',
                          style:TextStyle(fontSize:24,fontWeight:FontWeight.bold,fontFamily:'SF Pro Display'),
                          textAlign:TextAlign.center,
                        )

                    ),

                    Padding(
                        padding:EdgeInsets.fromLTRB(24,24,24,36),
                        child: Text('Lorem ipsum dolor sit amet, consetetur sadipscing',
                          style:TextStyle(fontSize:20,fontWeight:FontWeight.normal,fontFamily:'SF Pro Display'),
                          textAlign:TextAlign.center,
                        )

                    )
                  ]
              )
          )
      )
  );
}

Widget toolbarWithBackButton(BuildContext context, String title) {
  return Container(
    height: 92,
    color: Colors.white,
    child: Row(
      children: [
        Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: InkWell(
              onTap: () {
                Navigator.pop(context);
              },
              child: Tab(
                icon: Image.asset('assets/images/back.png'),
              ),
            )),
        Padding(
          padding: const EdgeInsets.only(left: 16.0),
          child: Text(
            title,
            style: TextStyle(
                fontFamily: 'SF-Pro',
                fontSize: 32,
                fontWeight: FontWeight.w900),
          ),
        ),
      ],
    ),
  );
}