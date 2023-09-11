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
   DogsApp({super.key});
var idController = TextEditingController();
  var nameController = TextEditingController();
  var ageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dogs db demo'),),
      body: Column(
        children: [
          TextField(controller: idController ,decoration: InputDecoration(labelText: "enter id"),),
          TextField(controller:nameController ,decoration: InputDecoration(labelText: "enter name"),),
          TextField(controller: ageController ,decoration: InputDecoration(labelText: "enter age"),),
        ],
      ),
      
      
      floatingActionButton: FloatingActionButton(
        onPressed: addDog ,
        child: Icon(Icons.add),
      ),
    );
  }

  void addDog() async {
    var dog = Dog(id: int.parse(idController.text), 
        name: nameController.text, 
        age: int.parse(ageController.text));
    await dogDao.insertDog(dog)    ;
  }
}
