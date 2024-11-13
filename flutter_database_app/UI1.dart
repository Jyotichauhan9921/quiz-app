import 'package:flutter/material.dart';
class assignment extends StatefulWidget {
  assignment({Key key}) : super(key: key);
  @override
  _assignmentState createState() {
    return _assignmentState();
  }
}
class _assignmentState extends State<assignment> {
  @override
  void initState() {
    super.initState();
  }
  @override
  void dispose() {
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
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
              SizedBox(height:20),
              Container(
                padding: EdgeInsets.only(left: 120),
                child: Row(children:[
                  Text('Sign Up/', style: TextStyle(fontWeight: FontWeight.bold, color: Colors.black, fontSize: 30)),
                  Text('Sign In',style: TextStyle(color: Colors.black, fontSize: 20))
                ],
                ),),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),),
                      hintText: 'Full Name'
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(borderRadius: const BorderRadius.all(
                      const Radius.circular(30.0),
                    ),),
                    hintText: 'Email Id/ Phone Number',
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),),
                      hintText: 'Password'
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 60,
                width: 350,
                child: TextField(
                  decoration: InputDecoration(
                      border: OutlineInputBorder(borderRadius: const BorderRadius.all(
                        const Radius.circular(30.0),
                      ),),
                      hintText: 'Re-Password'
                  ),
                ),
              ),
              SizedBox(height: 20),
              Container(
                height: 50,
                width: 350,
                child: FlatButton(
                  child: Text('LogIn', style: TextStyle(fontSize: 20.0),),
                  color: Colors.redAccent[100],
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30.0),
                      side: BorderSide(color: Colors.red)
                  ),
                  textColor: Colors.white,
                  onPressed: () {
                    print('You\'ve been signed up.');
                  },
                ),
              ),
              SizedBox(height: 10),
              Container(
                padding: EdgeInsets.only(left: 70),
                child: Row(children:[
                  Text('Already have an account?', style: TextStyle(color: Colors.black, fontSize: 17)),
                  Text('  Sign In',style: TextStyle(fontWeight: FontWeight.bold,color: Colors.blue, fontSize: 17))
                ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}