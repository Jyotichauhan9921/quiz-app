import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'QnA.dart';

Future<List<QnA>> _future;

Future<List<QnA>> fetchFaq() async{
    var url = Uri.parse("http://112.196.1.221:9014/api/faq");
    final response= await http.get(url);
    if(response.statusCode == 200){
       List jsonResponse=json.decode(response.body);
       return jsonResponse.map((job)=>new QnA.fromJson(job)).toList();
      //return QnA.fromJson(json.decode(response.body));
    }else{
         throw Exception('Failed to load QnA');
    }
}

void main()=>runApp(SettingsPage());

class SettingsPage extends StatefulWidget{
  _SettingsPage createState()=>_SettingsPage();
}



class _SettingsPage extends State<SettingsPage>{
@override
void initState(){
    super.initState();
    _future=fetchFaq();
}

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
              child: Text('FAQ',style:TextStyle(fontSize:32,fontWeight:FontWeight.w700)),
            )

          ]
      )

  );
}

Widget content() {
  return FutureBuilder<List<QnA>>(
    future:_future,
    builder:(context,snapshot){

       if(snapshot.hasError)
             print(snapshot.error);

      if(snapshot.hasData){
             return ListView.builder(
               itemCount: snapshot.data.length,
               itemBuilder: (context, index) {
                 return items(snapshot.data[index]);
               },
             );
      }else{
         return CircularProgressIndicator();
      }
    },

  );
}

Widget items(QnA queries) {
  return Padding(
          padding: EdgeInsets.only(top: 15),
          child: Container(
            width: 370,
            height: 400,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(2.0),
                color: Colors.white,
                //  border:Border.all(color:Colors.grey),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey,
                    offset: Offset(2.0, 2.0),
                    blurRadius: 2.0,
                  )
                ]
            ),
            child: Column(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 25),
                    child: Align(
                        alignment: Alignment.center,
                        child: Text(queries.question, style: TextStyle(
                            fontSize: 22, fontWeight: FontWeight.w700))
                    ),
                  ),
                  Padding(
                      padding: EdgeInsets.only(top: 25),
                      child: Text(queries.question, style: TextStyle(fontSize: 20),
                        textAlign: TextAlign.center,)
                  ),

                ]
            ),
          ),
        );
}





        //**************** next container*********************************88

  /*      Padding(
          padding:EdgeInsets.only(top:15),
          child:Container(
              width: 370,
              height: 340,
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
                      padding: EdgeInsets.only(top: 25),
                      child: Align(
                          alignment: Alignment.center,
                          child: Text('more questions...', style: TextStyle(fontSize: 22, fontWeight: FontWeight.w700))
                      ),
                    ),
                    Padding(
                        padding: EdgeInsets.only(top: 25),
                        child: Text('answer', style: TextStyle(fontSize: 20), textAlign: TextAlign.center,)

                    ),


                  ]
              )
          ),
        ),
      ]*/



