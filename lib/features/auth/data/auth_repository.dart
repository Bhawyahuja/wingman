import 'package:wingman/utils/local_data_source.dart';

class AuthRepository {
  final LocalDataSource _localDataSource = LocalDataSource();

  Future<bool> isLoggedIn() async {
    String? jwt = await _localDataSource.getJwt();
    return jwt != null;
  }

  Future<bool> isOnboarded() => _localDataSource.getOnboarded();

  Future<bool> logout() => _localDataSource.clear();
}
