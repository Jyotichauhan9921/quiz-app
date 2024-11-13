import 'dart:io';
import 'package:path_provider/path_provider.dart';  //getDocumentApplicationDirectory
import 'package:flutter/material.dart';
import 'package:sqflite/sqflite.dart';
import  'package:path/path.dart';
import 'dart:async';   // for await

class DatabaseHelper{                                             //every variable is static as we want to acess it using class name
 static final _dbName='myDatabase.db';
 static final _dbVersion=1;
 static final _tableName='myTable';

 static final columnId='_id';                      //here the values are the column fields of table 'mytable
 static final columnName='name';


  DatabaseHelper._privateConstructor();  //for making databaseHelper class singleton class
  static final DatabaseHelper instance=DatabaseHelper._privateConstructor(); //cretes a final static instance of DatabaseHelper class

  //initialise the database
  static Database _database;         //create database

  Future<Database> get database async{                  // getter method to get the database,empty initially
    if(_database!=null)   return _database;

    _database=await _initiateDatabase();    //initialise database with the new database in local directory
    return _database;
  }

   _initiateDatabase () async{        //await means it needs time to get executed
       Directory directory=await getApplicationDocumentsDirectory(); //function from path_provider package
                                                                 //default DocumentsDirectory is where all applications,local data are stored

       String path=join(directory.path,_dbName) ;//include path package
       return await openDatabase(path,version:_dbVersion,onCreate:_onCreate);    //it initialises(or creates) and opens database
   }

   Future _onCreate(Database db,int version){  //firstly we need to create table in the database
         db.execute(                                 //query() will return a map

           //triple quotes treates multiple text lines as a single string
           '''                                     
           CREATE TABLE $_tableName(
                $columnId INTEGER PRIMARY KEY,
                $columnName TEXT NOT NULL )
           '''
         );
   }

   //to insert values in the database it must be in the form of map and when records are retrieved , tehy too are in the map form

 Future<int> insert(Map<String,dynamic> row) async{

    Database db=await instance.database;  //(for current database instance) from current instance get the database, once this executed the getter method of database will be called
    return await db.insert(_tableName,row);

 }

 //queryAll is used to retrieve all records from table
 //In tables each record is stored in the form of map  so queryAll will retrieve all records that will return a  list of maps

    Future<List<Map<String,dynamic>>> queryAll() async{
       Database db=await instance.database;
       return await db.query(_tableName);
 }


}