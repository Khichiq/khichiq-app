import 'base_env_config.dart';

/// New Environment environment-specific configurations.
///
/// Extends [BaseEnvConfig] and provides the environment values specific
/// to the New Environment environment.
class NewEnvironmentEnvConfig extends BaseEnvConfig {
  @override
  String get baseUrl => 'dev.khichiq.com';

  @override
  String get token => '';

  @override
  String get refreshToken => '';
}
