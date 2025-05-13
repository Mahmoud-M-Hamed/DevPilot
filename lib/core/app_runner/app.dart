import 'package:flutter/material.dart';
import 'package:tutorial/screens/my_home_page.dart';

import '../main/environment_type.dart';

class DevPilotApp extends StatelessWidget {
  DevPilotApp({super.key, required this.environmentType});

  final EnvironmentType environmentType;
  final fixedTime = DateTime(2023, 1, 1, 14); // 2 PM = Afternoon

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: environmentType.environment.appName,
      debugShowCheckedModeBanner: (environmentType == EnvironmentType.development) ? true : false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: MyHomePage(
        currentTime: fixedTime,
      ),
    );
  }
}
