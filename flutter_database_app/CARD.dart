import 'package:flutter/material.dart';
void main()=>runApp(CardWidget());

class CardWidget extends StatelessWidget{
  @override
  Widget build(BuildContext context)
  {
       return MaterialApp(
         home: Scaffold(
            appBar: AppBar(
              title:Text('Card widget'),
            ),
           body: Center(
              child: Container(
               width:300,
               height:200,
               child:Card(
                 color:Colors.cyan, elevation:5,
                 child:Column(
                 children:[
                         ListTile(
                           leading:Icon(Icons.music_video_rounded),
                            title:Text('Uday Veer Hind'),
                            subtitle:Text('our butterfly'),
                         ),
                        ButtonBar(
                          children:[
                            RaisedButton(
                              child: Text('Play'),
                              onPressed:(){}
                            ),
                            RaisedButton(
                              child:Text('Pause'),
                              onPressed:(){}
                            )
                          ]
                        )
                 ]
               )

           )
           )
         )
         )
       );
  }
}