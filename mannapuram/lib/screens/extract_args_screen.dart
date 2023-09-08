import 'package:flutter/material.dart';
import 'package:mannapuram/model/screen_args_box.dart';

/**
 * this screen receives the arguments
 * and puts them in title n body
 */
class ExtractArgsScreen extends StatelessWidget {
  const ExtractArgsScreen({super.key});
  static const routeName = '/extractArguments';
  //as = type casting
  @override
  Widget build(BuildContext context) {
    final args = ModalRoute.of(context)!.settings.arguments as ScreenArgsBox;
    return Scaffold(
      appBar: AppBar(title: Text(args.title),),
      body: Center(
        child: Text(args.message),
      ),
    );
  }
}
