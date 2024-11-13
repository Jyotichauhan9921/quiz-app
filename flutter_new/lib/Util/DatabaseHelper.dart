import 'dart:io';
import 'package:flutter_new/model/User.dart';
import 'package:path_provider/path_provider.dart';
import 'package:sqflite/sqflite.dart';
import 'package:sqflite/sqlite_api.dart';

class DatabaseHelper {

  static DatabaseHelper _databaseHelper; // Singleton DatabaseHelper
  static Database _database;
  String userTable = 'user_table';
  String colId = 'id';
  String colName = 'name';
  String colEmailPhone = 'email_phone';
  String colPassword = 'password';

  //var name;

  DatabaseHelper._createInstance(); // Named constructor to create instance of DatabaseHelper

  factory DatabaseHelper() {
    if (_databaseHelper == null) {
      _databaseHelper = DatabaseHelper
          ._createInstance(); // This is executed only once, singleton object
    }
    return _databaseHelper;
  }

  Future<Database> get database async {
    if (_database == null) {
      _database = await initializeDatabase();
    }
    return _database;
  }

  Future<Database> initializeDatabase() async {
    // Get the directory path for both Android and iOS to store database.
    Directory directory = await getApplicationDocumentsDirectory();
    String path = directory.path + 'todos.db';

    // Open/create the database at a given path
    var todosDatabase = await openDatabase(
        path, version: 1, onCreate: _createDb);
    return todosDatabase;
  }

  void _createDb(Database db, int newVersion) async {
    await db.execute('CREATE TABLE $userTable('
        '$colId INTEGER PRIMARY KEY AUTOINCREMENT, $colName TEXT, '
        '$colEmailPhone TEXT, $colPassword TEXT)');
  }

  Future<int> insert(Map<String, dynamic> row) async {
    var dbClient = await database;
    int res = await dbClient.insert(userTable, row);
    print("-insert Products-- ${res}");
    return res;
  }

  Future<List<User>> getUserList(String emailPhone) async {
    List<User> userList = new List();
    var dbClient = await database;

    List<Map> resultList = await dbClient.query(userTable,
        columns: ['$colName', '$colEmailPhone', '$colPassword'],
        where: '$colEmailPhone = ?',
        whereArgs: [emailPhone]);

    if (resultList != null && resultList.isNotEmpty) {
      resultList.forEach((row) {
        User user = User(name: row[colName],
            emailPhone: row[colEmailPhone],
            password: row[colPassword]
        );
        userList.add(user);
      });
    } else {
      print("-empty cart-in db--");
    }
    return userList;
  }


  Future<List<User>> getAllUserList() async {
    List<User> userList = new List();
    var dbClient = await database;
    List<String> columnsToSelect = [
      colName,
      colEmailPhone,
      colPassword,
    ];

    List<Map> resultList = await dbClient.query(userTable,
      columns: columnsToSelect,
    );
    if (resultList != null && resultList.isNotEmpty) {
      resultList.forEach((row) {
        User user = User(
            name: row[colName],
            emailPhone: row[colEmailPhone],
            password: row[colPassword]
        );
        userList.add(user);
      });
    } else {
      print("-empty cart-in db--");
    }
    return userList;
  }

  Future<int> deletedata(String email) async {
    //returns id i.e., no. of rows affected  and it takes id of row to be deleted
    Database db = await database;
    var res = await db.delete(userTable, where: '$colEmailPhone = ?', whereArgs: [email]);
    print("-delete Products-- ${res}");
    return res;
  }

 Future<dynamic> checkLogin(String email, String password) async {

    print('inside checkLogin');

    final dbClient = await database;
    return await dbClient.query(userTable, where: "$colEmailPhone= ?  AND $colPassword = ?", whereArgs: [email, password] );
  }

  /*Future<dynamic> getId(String name, String password) async {
    //returns id i.e., no. of rows affected  and it takes id of row to be deleted
    Database db = await database;
    dynamic res = await db.rawQuery(
        'SELECT $colId from $userTable WHERE name=? and password=?',
        ['$name', '$password']);
    return res;
  }*/
}