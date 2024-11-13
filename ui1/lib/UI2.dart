import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home:HomePage() ,
    );
  }
}

class HomePage extends StatefulWidget{
  @override
  _HomePage createState()=>_HomePage();
}

class _HomePage extends State<HomePage>{
  @override
  Widget build(BuildContext context){
     return Scaffold(
        body:ClipPath(
            clipper: CurveClipper(),
             child:Container(
               color:Colors.orange,
             )
        )
     );
  }
}
class CurveClipper extends CustomClipper<Path>{    //throws error if not both methods not implmented
  @override
  Path getClip(Size size){
     Path path=Path();
     path.lineTo(0,size.height/3);
     path.quadraticBezierTo(size.width/4,(size.height/3)+70,size.width/2,size.height/3);
     path.quadraticBezierTo(3*size.width/4,(size.height/3)-70,size.width,size.height/3);
     path.lineTo(size.width,0);
     path.close();

     return path;
  }

   @override
   bool shouldReclip(CustomClipper<Path> oldClipper){
    return false;
   }
}