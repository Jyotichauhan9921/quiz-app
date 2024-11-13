import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
void main() {
  runApp(MaterialApp(
    title: 'Profile Page UI',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: ProfilePageUi(),
  ));
}
class ProfilePageUi extends StatefulWidget {
  ProfilePageUi({Key key}) : super(key: key);
  @override
  _ProfilePageUiState createState() {
    return _ProfilePageUiState();
  }
}
class _ProfilePageUiState extends State<ProfilePageUi> {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      body: ListView(
        children: [
          Padding(
            padding: const EdgeInsets.only(top: 12, left: 12, bottom: 12, right: 12),
            child: Container(
              margin: EdgeInsets.only(top: 12),
              height: MediaQuery.of(context).size.height * 0.37,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.orange[100],
              ),
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Stack(
                      children:[
                        CircleAvatar(
                          backgroundColor: Colors.white,
                          radius: 50,
                          child: Positioned(
                            top: 0.0,
                            left: 0.0,
                            child: Image(
                                image: AssetImage('images/downloaded.jpg'),
                                width: 70,
                                height: 70
                            ),
                          ),
                        ),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      "john villa",
                      style: TextStyle(fontSize: 20, color: Colors.black),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Text(
                      'jhonvilla@gmail.com',
                      style: TextStyle(fontSize: 15,color: Colors.deepOrange),
                    ),
                    Divider(
                      thickness: 2,
                    ),
                    Container(
                      padding: EdgeInsets.all(10),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceAround,
                        children: [
                          Column(
                            children: [Text("100"), SizedBox(height: 5,),Text("Documents")],
                          ),
                          Column(
                            children: [Text("50"), SizedBox(height: 5,),Text("Photos")],
                          ),
                          Column(
                            children: [Text("60"), SizedBox(height: 5,),Text("Videos")],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 170,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:  BorderRadius.circular(8),
                color: Colors.orange[100],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Personal", style: TextStyle(fontSize: 20, color: Colors.black), ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5,right: 5, bottom: 5),
                    child: Text("jhon villa", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5,right: 5, bottom: 5),
                    child: Text("Male", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5,right: 5, bottom: 5),
                    child: Text("South poul, Less Vegas street. 396568", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ),
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Container(
              height: 150,
              width: double.infinity,
              decoration: BoxDecoration(
                borderRadius:  BorderRadius.circular(8),
                color: Colors.orange[100],
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text("Contacts", style: TextStyle(fontSize: 20, color: Colors.black), ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5,right: 5, bottom: 5),
                    child: Text("+91 9878675456", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ),
                  Divider(
                    thickness: 1,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 25, top: 5,right: 5, bottom: 5),
                    child: Text("Astonica@gmai.com", style: TextStyle(fontSize: 15, color: Colors.black),),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}