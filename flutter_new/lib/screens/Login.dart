
import 'package:flutter/material.dart';
import 'package:flutter_new/Util/DatabaseHelper.dart';
import 'package:flutter_new/model/User.dart';
import 'package:flutter_new/screens/ProfilePageUi.dart';
import 'package:flutter_new/screens/Signup.dart';

class Login extends StatefulWidget {
  Login({Key key}) : super(key: key);

  @override
  _LoginState createState() {
    return _LoginState();
  }
}

class _LoginState extends State<Login> {

  DatabaseHelper _databaseHelper;

  TextEditingController usernameController=TextEditingController();
  TextEditingController passwordController=TextEditingController();



  @override
  void initState() {
    super.initState();
    _databaseHelper=DatabaseHelper();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        body: Column(
            children: [
              // Image.asset('assets/download.jfif'),
              Padding(
                padding:EdgeInsets.only(top:90),
                child:
                CircleAvatar(
                    radius: 50.0,
                    backgroundColor:Colors.redAccent,
                    child: CircleAvatar(
                      radius:33.0,
                      backgroundColor:Colors.white,
                    )
                ),
              ),
              Padding(
                padding:EdgeInsets.all(26),
                child:
                RichText(
                  text: TextSpan(
                      text:'Sign In/',
                      style:TextStyle(fontSize: 34,fontWeight:FontWeight.bold,color:Colors.black),
                      children:[
                        TextSpan(
                            text:'Sign Up',
                            style:TextStyle(fontSize: 24,fontWeight:FontWeight.bold,color:Colors.grey)
                        )
                      ]
                  ),
                  // "Sign In/Sign Up",style:TextStyle(fontSize: 34,fontWeight:FontWeight.bold)
                ),
              ),
              Container(
                // width:380,
                  margin:EdgeInsets.fromLTRB(20,28,20,13),
                  // padding:EdgeInsets.all(13),
                  child: TextField(
                     controller: usernameController,
                      decoration: InputDecoration(
                        hintText:'Username',
                        hintStyle:TextStyle(fontSize:20,color:Colors.black54),
                        //fillColor:Colors.black12,
                       // filled:true,
                       // enabled: true,

                         border:OutlineInputBorder(
                           borderSide:BorderSide(color:Colors.black12,),
                           borderRadius: BorderRadius.all(Radius.circular(30.0)),

                        ),


                      ),


                  )
              ),
              Container(
                // width:380,
                margin:EdgeInsets.fromLTRB(20,8,20,15),
                child:
                TextField(
                  controller: passwordController,
                    decoration:InputDecoration(
                     // fillColor:Colors.black12,
                     // filled:true,
                      hintText:'Password',
                      hintStyle:TextStyle(fontSize:20,color:Colors.black54),

                      border:  OutlineInputBorder(
                        borderSide:BorderSide(color:Colors.black12),
                        borderRadius:BorderRadius.circular(35),



                      ),
                    )
                ),
              ),
              Container(
                padding:EdgeInsets.fromLTRB(17,07,0,15),
                child:Row(
                  // mainAxisAlignment:MainAxisAlignment.spaceEvenly,
                    children:[
                      Checkbox(
                        value:false,
                        // onChanged(bool value){
                      ),
                      Text('Remember',style:TextStyle(fontSize:20)),
                    ]
                ),
              ),
              Padding(
                padding:EdgeInsets.all(20),
                child: SizedBox(
                  height:58,
                  width:380,
                  //  shape:BorderRadius.circular(30),
                  child: RaisedButton(
                      color:Colors.redAccent,
                      shape:RoundedRectangleBorder(
                          borderRadius:BorderRadius.circular(30)
                      ),
                      child: Text('Sign In',style:TextStyle(color:Colors.white,fontSize:20)),

                      onPressed: ()async{

                        var username=usernameController.text;
                        var password=passwordController.text;

                        User user = User(
                          emailPhone: usernameController.text,
                          password: passwordController.text
                        );
                        //********************************************************************************************


                           List<Map<String,dynamic>> res = await _databaseHelper.checkLogin(username, password);

                           if(res.length==1) {
                             Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePageUi(res.first[_databaseHelper.colEmailPhone])));

                           }

                        //********************************************************************************************

                       /* print('before login check');

                        List<User> allList = await _databaseHelper.getAllUserList();
                        allList.forEach((row){


                         ///if(row.emailPhone.compareTo(username)==0 && row.password.compareTo(password)==0){
                         ///  Navigator.push(context, MaterialPageRoute(builder: (context) => ProfilePageUi(user.emailPhone)));
                        /// }


                          User user1 = User(
                                                     emailPhone: row.emailPhone,
                                                     password: row.password
                                          );

                          if(user1.emailPhone!= null  && user1.password!=null)
                           {  print('yes');  }

                        });
                        print('after login check');*/

                      }
                  ),
                ),
              ),
              Padding(
                padding:EdgeInsets.only(top:13),
                child:Text("Forgot Password?",style:TextStyle(fontSize:20)),
              ),
            ]
        )

    );
  }
}