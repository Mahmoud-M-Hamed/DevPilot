import 'package:dev_pilot/core/app_runner/app.dart';
import 'package:flutter/material.dart';

import '../main/environment_type.dart';

Future<void> runAppForEnvironment(
    {required EnvironmentType environmentType}) async {
  return runApp(
    DevPilotApp(
      environmentType: environmentType,
    ),
  );
}
