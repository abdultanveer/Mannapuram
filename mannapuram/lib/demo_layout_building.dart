import 'package:flutter/material.dart';

void main(){
  runApp(LayoutApp());
}

class LayoutApp extends StatelessWidget {
  const LayoutApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
            title: Text("demo layouts"),
        ),
        body: Column(
          children: [
              _titleSection(),
            _buttonSection(),
            descriptionSection()
          ],
        ),
      ),
    );
  }

  Widget _titleSection(){
    return Row(
      children: [
        Column(
          children: [
            Text("some title"),
            Text("some description")
          ],
        ),
        Icon(Icons.star, color: Colors.red,),
        Text("41")
      ],
    );
  }
  
  Row _buttonSection(){
    Color color = Colors.blue;
    return Row(
      children: [
        buildButtonColumn("call", Icons.call, color),
        buildButtonColumn("route", Icons.route, color),
        buildButtonColumn("share", Icons.share, color)


      ],
    );
  }
  
  Column buildButtonColumn(String label, IconData icon,Color color){
    return Column(
      children: [
        Icon(icon, color: color,),
        Text(label, style: TextStyle(color: color),)
      ],
    );
  }
  
  Text descriptionSection(){
    return Text('Lake Oeschinen lies at the foot of the Blüemlisalp in the Bernese '
    'Alps. Situated 1,578 meters above sea level, it is one of the '
        'larger Alpine Lakes. A gondola ride from Kandersteg, followed by a '
        'half-hour walk through pastures and pine forest, leads you to the '
        'lake, which warms to 20 degrees Celsius in the summer. Activities '
        'enjoyed here include rowing, and riding the summer toboggan run.');
  }
}
