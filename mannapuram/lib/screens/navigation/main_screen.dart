import 'package:flutter/material.dart';
import 'package:mannapuram/screens/navigation/details_screen.dart';

void main() => runApp(MaterialApp(
  title: "main screen",
  home: Scaffold(body: MainScreen(),),));

class MainScreen extends StatelessWidget {
  const MainScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector (
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context){
          return const DetailsScreen();
        })); //route is page to be loaded
      },
      child: Image.network(
        'https://picsum.photos/250?image=9',
      ),
    );
  }
}
