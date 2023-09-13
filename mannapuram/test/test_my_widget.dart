import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mannapuram/widgets/my_widget.dart';

void main(){
  testWidgets('MyWidget has a title and message', (widgetTester)  async {
    await widgetTester.pumpWidget(const MyWidget(title: 'T', message: 'M'));

    // Create the Finders.
    final titleFinder = find.text('T');
    final messageFinder = find.text('M');

    expect(titleFinder, findsOneWidget);
    expect(messageFinder, findsOneWidget);


  });
}