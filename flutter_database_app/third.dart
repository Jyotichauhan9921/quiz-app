import'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.green,
      ),
      home: HomeCalendarPage(),
    );
  }
}

class HomeCalendarPage extends StatefulWidget{
  @override
  _HomeCalendarPageState createState() => _HomeCalendarPageState();
}


class _HomeCalendarPageState extends State<HomeCalendarPage>{
  CalendarController _controller;
  @override
  void initState() {
    super.initState();
    _controller=CalendarController();
  }
  @override
  Widget build(BuildContext context){
    return Scaffold(
        appBar:AppBar(
          title:Text('flutter calendar example'),
        ),
        body:SingleChildScrollView(
            child:Column(
              crossAxisAlignment:CrossAxisAlignment.start,
              children:[
              TableCalendar(
              initialCalendarFormat:CalendarFormat.month,
              calendarStyle:CalendarStyle(
                  todayColor:Colors.blue,
                  selectedColor:Theme.of(context).primaryColor,
                  todayStyle:TextStyle(
                      fontWeight:FontWeight.bold,
                      fontSize:22.0,
                      color:Colors.white)
              ),
            )
        )
        ]

    )
    )
    );
  }
}