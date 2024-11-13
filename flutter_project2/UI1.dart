import 'package:flutter/material.dart';

void main()=>runApp(MyApp());

class MyApp extends StatelessWidget{
  @override
  Widget build(BuildContext context){
    return MaterialApp(
        home:HomePage()
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
            body:Column(
                children:[
                  ClipPath(
                    clipper:OrangeClipper(),
                    child: Container(
                       color:Colors.orange
                    )
                  )

                ]
            )
         );

    }

}

class OrangeClipper extends CustomClipper<Path>{

  @override
  Path getClip(Size size){

    var path = Path();
    path.lineTo(0.0, size.height - 20);

    var firstControlPoint = Offset(size.width / 4, size.height);
    var firstEndPoint = Offset(size.width / 2.25, size.height - 30.0);
    path.quadraticBezierTo(firstControlPoint.dx, firstControlPoint.dy,
        firstEndPoint.dx, firstEndPoint.dy);

    var secondControlPoint =
    Offset(size.width - (size.width / 3.25), size.height - 65);
    var secondEndPoint = Offset(size.width, size.height - 40);
    path.quadraticBezierTo(secondControlPoint.dx, secondControlPoint.dy,
        secondEndPoint.dx, secondEndPoint.dy);

    path.lineTo(size.width, size.height - 40);
    path.lineTo(size.width, 0.0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper)
  {
    return false;
  }

}