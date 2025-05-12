import 'package:flutter/material.dart';
import 'package:tutorial/screens/my_home_page.dart';

void main() {
  runApp( MyApp());
}

class MyApp extends StatelessWidget {
   MyApp({super.key});

  final fixedTime = DateTime(2023, 1, 1, 14); // 2 PM = Afternoon

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(currentTime: fixedTime,),
    );
  }
}
