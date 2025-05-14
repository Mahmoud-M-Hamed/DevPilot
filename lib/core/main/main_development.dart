import 'package:dev_pilot/core/app_runner/app_runner.dart';
import 'package:dev_pilot/core/main/environment_type.dart';

Future<void> main() async {
  EnvironmentType environmentType = EnvironmentType.development;
  await runAppForEnvironment(environmentType: environmentType);
}
