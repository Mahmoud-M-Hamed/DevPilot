import 'package:dev_pilot/core/main/environment_type.dart';

import '../app_runner/app_runner.dart';

Future<void> main() async {
  EnvironmentType environmentType = EnvironmentType.production;
  await runAppForEnvironment(environmentType: environmentType);
}
