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
  late FocusNode myFocusNode;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    myFocusNode = FocusNode();
  }
  @override
  void dispose() {
    myFocusNode.dispose();
    myController.dispose();
    super.dispose();
  }

  void _showMyDialog(BuildContext context){
    //AlertDialog dialog = AlertDialog(content: Text(myController.text),);

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
            autofocus: true,
            onChanged: (text){
              print('First text field: $text (${text.characters.length})');
            },
            controller: myController,
            decoration: InputDecoration(
                hintText: "enter search word",
              border: OutlineInputBorder()
            ),
          ),
          TextFormField(
            focusNode:myFocusNode ,
            decoration: InputDecoration(
              labelText: "enter username",
              border: UnderlineInputBorder(),
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: (){
          myFocusNode.requestFocus();
          showDialog(context: context, builder: (context){
            return AlertDialog(content: Text(myController.text),);
          });
        },
        child: Icon(Icons.text_fields),
      ),
    );
  }
}
