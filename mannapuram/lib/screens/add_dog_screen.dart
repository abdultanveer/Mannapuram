import 'package:flutter/material.dart';
import 'package:mannapuram/database/crud.dart';
import 'package:mannapuram/screens/dogs_db_screen.dart';

import '../model/dog.dart';


class AddDog extends StatelessWidget {
   AddDog(DogDao dogDao, {super.key});
   bool isUpgrade = false;
  var idController = TextEditingController();

  var nameController = TextEditingController();

  var ageController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    if(ModalRoute.of(context)!.settings.arguments != null) {
      isUpgrade = true;
      Dog dog = ModalRoute.of(context)!.settings.arguments as Dog;
      idController.text = dog!.id.toString();
      nameController.text = dog!.name;
      ageController.text = dog.age.toString();
    }


    return Scaffold(
      body: Column(
        children: [
          TextField(controller: idController ,decoration: InputDecoration(labelText: "enter id"),),
          TextField(controller:nameController ,decoration: InputDecoration(labelText: "enter name"),),
          TextField(controller: ageController ,decoration: InputDecoration(labelText: "enter age"),),
          ElevatedButton(onPressed: (){
            addDog();
            Navigator.pop(context);
          }, child: Text((isUpgrade)? 'update':'save'))
        ],
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
