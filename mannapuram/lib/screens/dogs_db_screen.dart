import 'package:flutter/material.dart';
import 'package:mannapuram/model/dog.dart';

import '../database/crud.dart';

var dogDao = new DogDao();
var database;
void main() async{
  database = await dogDao.openDb();
  runApp(MaterialApp(
    home: DogsApp(),
  ));
}

class DogsApp extends StatelessWidget {
  const DogsApp({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dogs db demo'),),
      floatingActionButton: FloatingActionButton(
        onPressed: addDog ,
        child: Icon(Icons.add),
      ),
    );
  }

  void addDog() async {
    var dog = Dog(id: 1, name: "german shepherd", age: 3);
    await dogDao.insertDog(dog)    ;
  }
}
