import 'package:wingman/features/auth/login/data/remote/login_remote_data_source.dart';
import 'package:wingman/features/auth/login/data/remote/models/response_dto/login_response_dto.dart';
import 'package:wingman/utils/local_data_source.dart';

class LoginRepository {
  final LoginRemoteDataSource _remoteDataSource = LoginRemoteDataSource();
  final LocalDataSource _localDataSource = LocalDataSource();

  Future<LoginResponseDto> login(String mobile) {
    return _remoteDataSource.login(mobile).then((value) async {
      if (value.status) {
        await _localDataSource.setRequestId(value.requestId);
      }
      return value;
    });
  }
}
