import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:wingman/features/auth/login/data/remote/login_client.dart';
import 'package:wingman/features/auth/login/data/remote/models/request_dto/login_request_dto.dart';
import 'package:wingman/features/auth/login/data/remote/models/response_dto/login_response_dto.dart';
import 'package:wingman/interceptors/json_fix_interceptor.dart';

class LoginRemoteDataSource {
  LoginRemoteDataSource._(this._client);

  final LoginClient _client;

  factory LoginRemoteDataSource() {
    Dio dio = Dio();

    dio.options = BaseOptions(contentType: Headers.jsonContentType);

    dio.interceptors.add(PrettyDioLogger(requestBody: true));

    dio.interceptors.add(JsonFixInterceptor());

    LoginClient client = LoginClient(dio);
    return LoginRemoteDataSource._(client);
  }

  Future<LoginResponseDto> login(String mobile) {
    LoginRequestDto loginRequest = LoginRequestDto(mobile);
    return _client.login(loginRequest);
  }
}
