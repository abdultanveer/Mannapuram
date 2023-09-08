import 'package:flutter/material.dart';
import 'package:mannapuram/screens/navigation/second_route.dart';

void main()=> runApp(MaterialApp(home: FirstRoute(),));


class FirstRoute extends StatelessWidget {
  const FirstRoute({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("first route"),),
      body: Center(
        child: ElevatedButton(
          onPressed: (){
            Navigator.push(context, MaterialPageRoute(builder: (context){
              return SecondRoute();
            }));
          },
          child: Text("open route"),
        ),
      ) ,
    );
  }
}
