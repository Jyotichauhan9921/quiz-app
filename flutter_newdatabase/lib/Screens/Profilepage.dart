import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_newdatabase/Utils/Dbhelper.dart';

import 'Signup.dart';


class ProfilePage extends StatelessWidget {

  String name,email;
  ProfilePage(this.name,this.email,{Key key}):super(key: key);

  DatabaseHelper _databaseHelper=DatabaseHelper();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset:false,
      backgroundColor:Colors.black,
      appBar: AppBar(
        title:Text('STaCKify',style:TextStyle(fontSize:20,color:Colors.green)),
        backgroundColor: Colors.lightGreenAccent,
      ),
      body:
          Container(
            padding:EdgeInsets.only(top:50),
            child:   Column(
                           children:[
                             Text("Profile",style:TextStyle(fontSize:70,color:Colors.tealAccent)),
                             Divider(),
                             Text("Welcome $name !!",style:TextStyle(fontSize:28,color:Colors.redAccent)),
                             Text("email:  $email",style:TextStyle(fontSize:25,color:Colors.lightBlueAccent)),

                           ]
                       ),
          ),
      drawer:Drawer(
                child:ListView(
                  children:[
                         UserAccountsDrawerHeader(
                           accountName: Text(name),
                           accountEmail: Text(email),

                           currentAccountPicture: CircleAvatar(
                              backgroundImage:NetworkImage('')
                           )
                         ),
                     ListTile(
                       leading:Icon(Icons.delete),
                       title:Text('Delete'),
                       onTap: (){
                          _databaseHelper.delete_info(email);
                       }
                     ),
                    ListTile(
                      leading:Icon(Icons.logout),
                      title:Text('SignOut'),
                      onTap:(){
                        //Navigator.pop(context);
                        Navigator.pushReplacement(context, MaterialPageRoute(builder: (cnx) => Signup()));
                      }
                    )
                  ]
                )
            ),

    );
  }
}