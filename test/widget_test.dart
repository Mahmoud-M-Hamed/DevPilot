// This is a basic Flutter widget test.
//
// To perform an interaction with a widget in your test, use the WidgetTester
// utility in the flutter_test package. For example, you can send tap and scroll
// gestures. You can also use WidgetTester to find child widgets in the widget
// tree, read text, and verify that the values of widget properties are correct.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:tutorial/main.dart';
import 'package:tutorial/screens/my_home_page.dart';
import 'package:tutorial/util/time_helper.dart';

void main() {
  group('Widget Testing', (){

    testWidgets('Widget Testing', (WidgetTester tester) async {
      final fixedTime = DateTime(2023, 1, 1, 14); // 2 PM = Afternoon
      const String expectedImagePath = 'assets/images/Afternoon.jpg';


      await tester.pumpWidget(MaterialApp(
        home: MyHomePage(currentTime: fixedTime),
      ),);

      final container = tester.widget<Container>(find.byType(Container));

      final decoration = container.decoration as BoxDecoration;
      final image = decoration.image as DecorationImage;
      final imageProvider = image.image as AssetImage;

      expect(imageProvider.assetName, expectedImagePath);

    });

  });
}
