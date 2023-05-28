import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:wingman/features/auth/login/data/remote/models/response_dto/login_response_dto.dart';
import 'package:wingman/features/onboarding/data/remote/models/request_dto/onboarding_request_dto.dart';
import 'package:wingman/features/onboarding/data/remote/onboarding_client.dart';
import 'package:wingman/interceptors/json_fix_interceptor.dart';
import 'package:wingman/interceptors/token_interceptor.dart';

class OnboardingRemoteDataSource {
  OnboardingRemoteDataSource._(this._client);

  final OnboardingClient _client;

  factory OnboardingRemoteDataSource() {
    Dio dio = Dio();

    dio.options = BaseOptions(contentType: Headers.jsonContentType);

    dio.interceptors.add(PrettyDioLogger(requestBody: true));

    dio.interceptors.add(JsonFixInterceptor());

    dio.interceptors.add(TokenInterceptor());

    OnboardingClient client = OnboardingClient(dio);
    return OnboardingRemoteDataSource._(client);
  }

  Future<LoginResponseDto> submitProfile(String name, String email) {
    OnboardingRequestDto onboardingRequest = OnboardingRequestDto(
      name,
      email,
    );
    return _client.submitProfile(onboardingRequest);
  }
}
