import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:mannapuram/firebase_options.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: defaultFirebaseOptions);
  runApp(MaterialApp(home: Scaffold(
    body: Center(child: AddUser('abdul', 'manappuram', 123)),
  ),));
}

class AddUser extends StatelessWidget {
  final String fullName;
  final String company;
  final int age;

  AddUser(this.fullName, this.company, this.age);

  @override
  Widget build(BuildContext context) {
    // Create a CollectionReference called users that references the firestore collection
    CollectionReference users = FirebaseFirestore.instance.collection('users');

    Future<void> addUser() {
      // Call the user's CollectionReference to add a new user
      return users
          .add({
        'full_name': fullName, // John Doe
        'company': company, // Stokes and Sons
        'age': age // 42
      })
          .then((value) => print("User Added"))
          .catchError((error) => print("Failed to add user: $error"));
    }

    return ElevatedButton(
      onPressed: addUser,
      child: Text(
        "Add User",
      ),
    );
  }
}

const defaultFirebaseOptions =  FirebaseOptions(
  apiKey: 'AIzaSyDwFq_SLL422HlFx-P6EF8IXeg2bS_Mxcs',
  appId: '1:362826793886:android:7ec933d36a35ec9aa84c8f',
  messagingSenderId: '362826793886',
  projectId: 'b2manappuram',
  storageBucket: 'b2manappuram.appspot.com',
);
