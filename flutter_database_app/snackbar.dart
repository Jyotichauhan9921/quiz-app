import 'package:flutter/material.dart';
import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      title:'Flutter animation',
      theme:ThemeData(
           primarySwatch:Colors.blue,
      ),
    );
  }
}
class MyHomePage extends StatefulWidget{
  _HomePageState createState()=>_HomePageState();
}

class _HomePageState extends State<MyHomePage> with SingleTickerProviderStateMixin{
  Animation<double> animation;
  AnimationController animationController;
  @override
  void initState(){{
      super.initState();
      animationController = AnimationController(vsyncLthis,duration:Duration(milliseconds:2500));
       animation=Tween<double>(begin:0.0,end:1.0).animate(abimationController);
       animation.addListener((){
         setState((){
           print(animation.value.toString());
         });
       });
       animation.addStatusListener((status){
         if(status==AnimationStatus.completed){
           animationController.reverse();
         }else if(status== AnimationStatus.dismissed){
           animationController.forward();
         }
       });
       animationController.forward();
  }
  @override
  Widget build(BuildContext context){
    return Center(
      child: AnimatedLogo(
        animation:animation,
      )

    );
  }
  }
}
class AnimatedLogo extends AnimatedWidget{
  final Tween<double>_sizeAnimation =Tween<double>(begin:0.0,end:500.0);
  AnimatedLogo({key key,Animation animation}):super(key key,listenable:animation);
  @override
  Widget build(BuildContextcontext){
    final Automation<double> animation=listenable;
    return Transform.scale(
      
    )
  }
}