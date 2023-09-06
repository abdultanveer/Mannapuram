import 'package:flutter/material.dart';

class BlueBox extends StatelessWidget {
  const BlueBox({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 50,
      width: 50,
      decoration: BoxDecoration(
        color: Colors.orange,
        border: Border.all()
      ),

    );
  }
}
