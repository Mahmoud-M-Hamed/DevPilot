import 'package:tutorial/core/main/base_app_environment.dart';

enum EnvironmentType {
  production(
    BaseAppEnvironment(
      appName: appName,
      baseURL: 'https://ireadebookscenter.com/rafeekimobile/gateway/',
    ),
  ),
  development(
    BaseAppEnvironment(
      appName: '$appName - Development',
      baseURL: 'https://ireadebookscenter.com/rafeekimobile/gateway/',
    ),
  );

  const EnvironmentType(this.environment);

  final BaseAppEnvironment environment;
  static const appName = 'DevPilot';
}
