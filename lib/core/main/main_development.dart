import 'package:tutorial/core/app_runner/app_runner.dart';
import 'package:tutorial/core/main/environment_type.dart';

Future<void> main() async {
  EnvironmentType environmentType = EnvironmentType.development;
  await runAppForEnvironment(environmentType: environmentType);
}
