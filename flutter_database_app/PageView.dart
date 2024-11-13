import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  PageController _pageController=PageController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("Flutter Pageview Demo"),
          backgroundColor: Colors.red,
        ),
        body: Center(
          child:
          Container(
              child: PageView(
                controller:_pageController,
                children:[
                    Text('ok'),
                    Text('no'),
                ],
                onPageChanged:(num){

                }

              )
          ),
        ),
      ),
    );
  }
}