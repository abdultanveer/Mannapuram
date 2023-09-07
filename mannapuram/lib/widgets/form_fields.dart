import 'package:flutter/material.dart';

void main()=> runApp(MaterialApp(
  home: MyCustomForm()
  ),
);

class MyCustomForm extends StatefulWidget {
  const MyCustomForm({super.key});

  @override
  State<MyCustomForm> createState() {
    return _MyCustomFormState();
  }
  }


class _MyCustomFormState extends State<MyCustomForm> {
  final myController = TextEditingController();

  @override
  void dispose() {
    myController.dispose();
    super.dispose();
  }

  void showMyDialog(BuildContext context){
    AlertDialog alertDialog = AlertDialog();

    showDialog(context: context, builder: (context){
      return AlertDialog(content: Text(myController.text),);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          TextField(
            controller: myController,
            decoration: InputDecoration(
                hintText: "enter search word",
              border: OutlineInputBorder()
            ),
          ),
          TextFormField(
            decoration: InputDecoration(
              labelText: "enter username",
              border: UnderlineInputBorder(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          showDialog(context: context,
              builder: (context){
            return AlertDialog(
              content: Text(myController.text),
            );
              });
        },
        child: Icon(Icons.text_fields),
      ),
    );
  }
}
