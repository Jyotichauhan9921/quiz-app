import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_new/Util/DatabaseHelper.dart';
import 'package:flutter_new/model/User.dart';
import 'package:flutter_new/screens/ProfilePageUi.dart';
import 'package:flutter_new/screens/Login.dart';

class Signup extends StatefulWidget {
  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  DatabaseHelper _databaseHelper;
  var nameController = TextEditingController();
  var emailController = TextEditingController();
  var passwordController = TextEditingController();
  var reEnterController = TextEditingController();


  @override
  void initState() {
    super.initState();
    _databaseHelper = DatabaseHelper();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(height: 40),
              CircleAvatar(
                radius: 50.0,
                backgroundColor: Colors.redAccent[100],
                child: CircleAvatar(
                  radius: 33.0,
                  backgroundColor: Colors.grey[100],
                ),
              ),
              SizedBox(height: 20),
              Container(
                padding: EdgeInsets.only(left: 120),
                child: Row(
                  children: [
                    Text('Sign Up/',
                        style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 30)),
                    Text('Sign In',
                        style: TextStyle(color: Colors.black, fontSize: 20))
                  ],
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                child: TextField(
                  controller: nameController,

                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      hintText: 'Full Name'),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                child: TextField(
                  controller: emailController,

                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),
                    ),
                    hintText: 'Email Id/ Phone Number',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                child: TextField(
                  controller: passwordController,

                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      hintText: 'Password'),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                child: TextField(
                  controller: reEnterController,

                  decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: const BorderRadius.all(
                          const Radius.circular(30.0),
                        ),
                      ),
                      hintText: 'Re-Password'),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 350,
                child: FlatButton(
                  child: Text(
                    'Sign Up',
                    style: TextStyle(fontSize: 20.0),
                  ),
                  color: Colors.redAccent[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.red)),
                  textColor: Colors.white,
                  onPressed: () async {
                    if (nameController.text.trim().isNotEmpty &&
                        emailController.text.trim().isNotEmpty &&
                        passwordController.text.trim().isNotEmpty &&
                        reEnterController.text.trim().isNotEmpty &&
                        passwordController.text
                            .compareTo(reEnterController.text) ==
                            0) {
                      //TODO: save in database and Move to profile screen
                      User user = User(
                        password: passwordController.text.trim(),
                        emailPhone: emailController.text.trim(),
                        name: nameController.text.trim(),
                      );
                      int result = await _databaseHelper.insert(user.toMap());
                      if (result != 0) {

                        Navigator.pushReplacement(context,
                            MaterialPageRoute(builder: (cnx)=>ProfilePageUi(user.emailPhone)));
                      }
                    }
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 30),
                child: RichText(
                  text: TextSpan(
                      text: 'Already have an account?',
                      style: TextStyle(color: Colors.black, fontSize: 17),
                      children: <TextSpan>[
                        TextSpan(text: ' Sign In',
                                 style: TextStyle(color: Colors.blue, fontSize: 17, fontWeight: FontWeight.bold),
                                 recognizer: TapGestureRecognizer()
                                 ..onTap = () {
                                Navigator.push(context, MaterialPageRoute(builder: (context) => Login()));
                              }
                        )
                      ]
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
  /*String nme(){
    return nameController.text.toString();
  }

  String pwd(){
    return passwordController.text.toString();
  }*/

}
