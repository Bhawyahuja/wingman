import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wingman/features/auth/login/data/remote/models/request_dto/login_request_dto.dart';
import 'package:wingman/features/auth/login/data/remote/models/response_dto/login_response_dto.dart';

part 'login_client.g.dart';

@RestApi()
abstract class LoginClient {
  factory LoginClient(Dio dio, {String? baseUrl}) = _LoginClient;

  @POST("https://test-otp-api.7474224.xyz/sendotp.php")
  Future<LoginResponseDto> login(@Body() LoginRequestDto loginRequest);
}
