import 'package:flutter/material.dart';
import 'package:tutorial/core/app_runner/app.dart';
import '../main/environment_type.dart';

Future<void> runAppForEnvironment({required EnvironmentType environmentType}) async {
  return runApp(
    DevPilotApp(
      environmentType: environmentType,
    ),
  );
}
