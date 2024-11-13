import 'dart:io';
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import 'package:path_provider/path_provider.dart';  //grey color means unused packages
import 'package:async/async.dart';
import 'package:flutter_newdatabase/Model/User.dart';

class DatabaseHelper{

 static DatabaseHelper _databaseHelper;
  static final tableName="Users_info";

  static final colId="Id";             //here we will be using variable name for columns as we do not want to hard code
  static final colName="Username";
  static final colEmail="Email";
  static final colPassword="Password";

  static Database _database;

  DatabaseHelper._createInstance();

 /*DatabaseHelper._privateConstructor();
  static final DatabaseHelper instance=DatabaseHelper._privateConstructor();  *///read ?*/

 factory DatabaseHelper() {                 //constructor
   if (_databaseHelper == null) {
     _databaseHelper = DatabaseHelper._createInstance(); // This is executed only once, singleton object
   }
   return _databaseHelper;
 }


   Future<Database> get database async{             //read about future
        if(_database == null)
          _database = await initDatabase();

        return _database;

  }

  Future<Database> initDatabase() async{    //since it is returning databases so must be called with await else throws error
      //Database db;
      Directory directory=await getApplicationDocumentsDirectory();
      String path=directory.path+"flutter_newdatabase.db";
      return await openDatabase(path,version:1,onCreate:_createDb);
   }

   void _createDb(Database db, int newVersion) async{  //here if argumnets not given it throws error

        await db.execute(
             '''
             CREATE TABLE $tableName(
             $colId INTEGER PRIMARY KEY AUTOINCREMENT,
             $colName TEXT,
             $colEmail TEXT,
             $colPassword TEXT 
             )
            '''
        );
   }

   Future<int> insert(Map<String,dynamic> mp) async{
     Database db=await database;
     //User user=User(username:name,email:emailId,password:pwd);        //check if its important to initialise object ? ,the username ,email ,password must be user
                                                                      // class variables
     //Map<String,dynamic> mp=user.tomap();       // object values converted to map

     int id=await db.insert(tableName,mp);
     print('inserted row $id' );
     return id;
   }

   Future<int> delete_info(String email_id) async{
      Database db=await database;
      var res=await db.delete(tableName,where:'$colEmail = ?',whereArgs: [email_id]);
      print("deleted = ${res}");
      return res;
   }




}