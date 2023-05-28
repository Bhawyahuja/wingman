import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wingman/app_config/app_urls.dart';
import 'package:wingman/features/auth/login/data/remote/models/request_dto/login_request_dto.dart';
import 'package:wingman/features/auth/login/data/remote/models/response_dto/login_response_dto.dart';

part 'login_client.g.dart';

@RestApi(baseUrl: AppUrls.baseUrl)
abstract class LoginClient {
  factory LoginClient(Dio dio, {String? baseUrl}) = _LoginClient;

  @POST(AppUrls.sendOtp)
  Future<LoginResponseDto> login(@Body() LoginRequestDto loginRequest);
}
