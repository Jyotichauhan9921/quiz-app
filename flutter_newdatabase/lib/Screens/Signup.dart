import 'package:flutter/material.dart';
import 'package:flutter_newdatabase/Model/User.dart';
import 'package:flutter_newdatabase/Screens/Profilepage.dart';
import 'package:flutter_newdatabase/Utils/Dbhelper.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends  State<Signup>{

  DatabaseHelper _dbHelper;

  TextEditingController nameController=TextEditingController();
  TextEditingController emailController=TextEditingController();
  TextEditingController passwordController=TextEditingController();
  TextEditingController confirmController=TextEditingController();

  @override
  void initState() {
    super.initState();
    _dbHelper = DatabaseHelper();
  }

  @override
  Widget build(BuildContext context)
  {
    return Scaffold(
       resizeToAvoidBottomInset: false,
        //backgroundColor:Colors.cyan,
        body:
        ListView(
        children: [
         Padding(
            padding:EdgeInsets.all(40),
            child: Column(
                children:[
                  Container(
                    padding: EdgeInsets.fromLTRB(30, 30, 40, 30),
                    child: Text("Sign In",style:TextStyle(fontSize:30)),
                  ),

                  Container(
                  //  margin:EdgeInsets.fromLTRB(20, 80, 20, 40),
                    decoration: BoxDecoration(
                      border:Border.all(),
                      borderRadius:BorderRadius.circular(20.0),

                      //boxShadow:BoxShadow()
                    ),

                  child:Column(
                    children:[
                    Padding(
                      padding: EdgeInsets.fromLTRB(10,20,10,0),
                      child:
                      Container(
                        alignment: Alignment.topLeft,
                        child: Text('Username',style: TextStyle(fontSize:20)),
                      )
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10,0,10,0),
                    child:TextField(
                      controller: nameController,
                      decoration: InputDecoration(
                       // border: OutlineInputBorder(),
                      )
                    ),
                  ),
                  Padding(
                      padding:EdgeInsets.fromLTRB(10,18,10,0),
                      child:   Container(
                        alignment: Alignment.topLeft,
                        child:Text('Email',style: TextStyle(fontSize:20)),
                      )
                  ),
                  Container(
                    padding: EdgeInsets.fromLTRB(10,0,10,0),
                    child:TextField(
                      controller:emailController,
                      decoration:InputDecoration(
                        //border: OutlineInputBorder(),
                      )
                  ),
                  ),
                  Padding(
                      padding: EdgeInsets.fromLTRB(10,18,10,0),
                      child:
                      Container(
                          alignment:Alignment.topLeft,
                          child: Text('Password',style:TextStyle(fontSize:20))
                      )
                  ),
                  /* Padding(
                     padding: EdgeInsets.all(10),
                     child:*/
                  Container(
                  padding: EdgeInsets.fromLTRB(10,0,10,0),
                  child:TextField(
                    controller: passwordController,
                      obscureText: true,
                      decoration: InputDecoration(
                        //border: OutlineInputBorder(),
                      )
                  ),
                  ),
                  //),
                  Padding(
                    padding:EdgeInsets.fromLTRB(10,18,10,0),
                    child:
                    Container(
                      alignment:Alignment.topLeft,
                      child:
                      Text('Confirm password',style:TextStyle(fontSize:20)),
                    ),
                  ),
                  Container(
                      padding: EdgeInsets.fromLTRB(10,0,10,0),
                      child:TextField(
                    controller: confirmController,
                    obscureText: true,
                    decoration: InputDecoration(
                     // border: OutlineInputBorder(),
                    ),
                  ),
                  ),
             Padding(
             padding:EdgeInsets.fromLTRB(0, 35, 0, 10),
             child:
                  RaisedButton(
                      color:Colors.blueAccent,
                      child: Text('Register',style:TextStyle(fontSize: 23)),
                      onPressed: ()async{

                        User user=User(username:nameController.text.trim(),email:emailController.text.trim(),password:passwordController.text.toString().trim());

                        final res=await _dbHelper.insert(user.tomap());
                        if(res!=0) {
                             Navigator.pushReplacement(context, MaterialPageRoute(builder: (cnx) => ProfilePage(user.username,user.email)));
                             print('registered');
                        }

                       // Navigator.pushReplacement(context, MaterialPageRoute(builder: (cnx) => ProfilePage(user.username,user.email)));
                      }
                  ),
             ),
                 ],
                  ),
                  ),
                ]
            )
        )
      ]
        )

    );
  }
}