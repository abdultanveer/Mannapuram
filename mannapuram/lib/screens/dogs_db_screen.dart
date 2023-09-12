import 'package:flutter/material.dart';
import 'package:mannapuram/model/dog.dart';
import 'package:mannapuram/screens/add_dog_screen.dart';

import '../database/crud.dart';

var dogDao = new DogDao();
var database;
void main() async{
  database = await dogDao.openDb();
  runApp(MaterialApp(
  routes: {
    'add_dog': (context)=> AddDog(dogDao),
  },
    home: DogsApp(),
  ));
}

class DogsApp extends StatefulWidget {
   DogsApp({super.key});

  @override
  State<DogsApp> createState() => _DogsAppState();
}

class _DogsAppState extends State<DogsApp> {



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('dogs db demo'),),
      body: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          /*TextField(controller: idController ,decoration: InputDecoration(labelText: "enter id"),),
          TextField(controller:nameController ,decoration: InputDecoration(labelText: "enter name"),),
          TextField(controller: ageController ,decoration: InputDecoration(labelText: "enter age"),),
        */ FutureBuilder(future: getAllDogs(), builder: (context,snapshot){
           return Flexible(
             flex: 1,
             child: Center(
               child: ListView.builder(

                   itemCount: snapshot.data!.length,
                   itemBuilder: (context,index){
                     final item = snapshot.data![index];
                     return GestureDetector(
                       onTap: (){
                         print(snapshot.data![index].name);
                         var dog = snapshot.data![index];
                         Navigator.pushNamed(context, 'add_dog',arguments: dog);
                       },
                       child: Dismissible(
                         onDismissed: (direction){
                            deleteDog(index);
                            setState(() {

                            });
                         },
                         background: Container(color: Colors.red),
                         key: Key(item.name),
                   child: ListTile(
                       leading: Text(snapshot.data![index].age.toString()),
                       title: Text(snapshot.data![index].name),
                   ),
                 ),
                     );
               }),
             ),
           );
         }),
        ],
      ),


      floatingActionButton: FloatingActionButton(
        onPressed: (){
          Navigator.push(context,
          MaterialPageRoute(builder: (context) =>  AddDog(dogDao)));
        },
        child: Icon(Icons.add),
      ),
    );
  }

  void addDog() async {
    /*var dog = Dog(id: int.parse(idController.text),
        name: nameController.text,
        age: int.parse(ageController.text));
    await dogDao.insertDog(dog)    ;*/
  }

  Future<List<Dog>> getAllDogs(){
    return dogDao.getDogs();
  }

  deleteDog(int id){
    dogDao.deleteDog(id);
  }
}
