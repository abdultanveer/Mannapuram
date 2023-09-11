import 'package:flutter/widgets.dart';
import 'package:sqflite/sqflite.dart';
import 'dart:async';
import 'package:path/path.dart';

import '../model/dog.dart';

//database access object CRUD methods

class DogDao{
  var  database ;

  DogDao(){
    print('dog dao constructor called');
    openDb();
  }

  void openDb()async {
    WidgetsFlutterBinding.ensureInitialized();
    database = openDatabase(await getDatabasesPath(),
    onCreate: (db,version){
      String sql =
          'CREATE TABLE dogs(id INTEGER PRIMARY KEY,name TEXT,age INTEGER)';
      db.execute(sql);
    }, version: 1
    );
    if(database!= null){ print("database is not null");}
  }
  //{columnName: value, }

  //create dog
    insertDog(Dog dog)async{
    Database db = await database;
    int position = await db.insert(
          "dogs",
          dog.toMap(),
          nullColumnHack: null,
          conflictAlgorithm: ConflictAlgorithm.replace);
    print('inserted dog--'+dog.name);

    }
  //read dog
  //update dog
  //delete dog


}