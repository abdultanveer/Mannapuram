import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:mannapuram/widgets/blue_box.dart';

class MyWidget extends StatelessWidget {
  const MyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [

        BlueBox(),
        BlueBox(),
        BlueBox()
      ],
    );
  }


}


