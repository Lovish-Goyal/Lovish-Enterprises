import 'package:envied/envied.dart';
part 'env.g.dart';

@Envied(path: '.env', obfuscate: true)
abstract class Env {
  /// * Appwrite Project Id
  @EnviedField(varName: 'PROJECT_ID')
  static String projectId = _Env.projectId;

  /// * Appwrite Project Endpoint
  @EnviedField(varName: 'ENDPOINT')
  static String endpoint = _Env.endpoint;
}
