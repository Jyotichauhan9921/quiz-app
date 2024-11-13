
//here Databasehelper class would give all methods or instances(though single) to interact with the database

import 'dart:io'; //for Directory class
import 'package:path_provider/path_provider.dart'; //getApplicationDocumentsDirectory
import 'package:path/path.dart'; // for join()
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';  // for Database class
import 'dart:async';

class Databasehelper{
  static final _databasename="todo.db";
  static final _databaseversion=1;
  static final table="my_table";

  static final columnID='id';
  static final columnName="todo";

  static Database _database;  //sqflite package

  Databasehelper._privateConstructor();
  static final Databasehelper instance=Databasehelper._privateConstructor();

  //database for apps is stored locally on phone  so if we delete the cache or the app data then chances are the
  // database is not available
  Future<Database> get database async{   //async means it will run separately from main thread so our app would not freeze
    if(_database != null) return _database;

    _database =await _initDatabase(); // create database
    return _database;
  }
  _initDatabase() async{
    Directory documentdirectory = await getApplicationDocumentsDirectory(); //to get the directory
    String path=join(documentdirectory.path,_databasename);
    return await openDatabase(path,version:_databaseversion,onCreate:_onCreate);//no need to give () for method
  }

  Future _onCreate(Database db,int version) async{ //_onCreate returns Future value
    await db.execute(
      //raw Query
        '''
              CREATE TABLE $table(
                $columnID INTEGER PRIMARY KEY,
                $columnName TEXT NOT NULL,
                )
              '''
    );
  }
  //functions to insert,update, query and delete

  //Insert function would return an id (of type int) of the row inserted and takes map of values as argument
  Future<int> insert(Map<String,dynamic> row) async{
    Database db = await instance.database;
    return await db.insert(table,row); //insert is inbuilt function
  }

  //query all rows
  Future<List<Map<String,dynamic>>> queryAll() async{
    Database db=await instance.database;
    return await db.query(table);
  }

  Future<int> deletedata(int id) async{ //returns id i.e., no. of rows affected  and it takes id of row to be deleted
    Database db=await instance.database;
    var res=await db.delete(table,where:"id = ?",whereArgs:[id]);
    return res;
  }

  /*Future<int> update(int id)async{
    Database db=await instance.database;
    var res=await db.update(table,{"name":"johnny","age":2},where: "id=?",whereArgs:[id]);
    return res;
  }*/
}

