import 'package:flutter/material.dart';
import 'package:flutter_new/Util/DatabaseHelper.dart';
import 'package:flutter_new/screens/Login.dart';
import 'package:flutter_new/screens/ProfilePageUi.dart';
import 'package:flutter_new/screens/Signup.dart';

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    title: 'Profile Page UI',
    theme: ThemeData(
      primarySwatch: Colors.blue,
      visualDensity: VisualDensity.adaptivePlatformDensity,
    ),
    home: Signup(),
  ));
}
