import 'package:flutter/material.dart';

void main() => runApp(MaterialApp(
  home: Scaffold(
    body: ParentWidget(),
  ),
));

class ParentWidget extends StatefulWidget {
  const ParentWidget({super.key});

  @override
  State<ParentWidget> createState() => _ParentWidgetState();
}

class _ParentWidgetState extends State<ParentWidget> {
  bool _active = false;

  void _handleTapboxChanged(bool newValue){
    setState(() {
      _active = newValue;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: TapboxB(
       active: _active,
      onChanged: _handleTapboxChanged,
    ));
  }
}

class TapboxB extends StatelessWidget {
  const TapboxB({
    super.key,
  this.active = false,
  required this.onChanged});

 final bool active;
 final ValueChanged<bool> onChanged;

 void _handleTap(){
   onChanged(!active);
 }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: _handleTap, //this will call handletap-> onchanged of parent ->_handleTapboxChanged
      child: Container(
        width: 200, height: 200,
        decoration: BoxDecoration(
          color: active ? Colors.lightGreen: Colors.grey
        ),
        child: Center(
          child: Text(
            active ? 'active': 'inactive'
          ),
        ),
      ),
    );
  }
}

