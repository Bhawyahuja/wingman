import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wingman/app_config/app_urls.dart';
import 'package:wingman/features/auth/login/data/remote/models/response_dto/login_response_dto.dart';
import 'package:wingman/features/onboarding/data/remote/models/request_dto/onboarding_request_dto.dart';

part 'onboarding_client.g.dart';

@RestApi(baseUrl: AppUrls.baseUrl)
abstract class OnboardingClient {
  factory OnboardingClient(Dio dio, {String? baseUrl}) = _OnboardingClient;

  @POST(AppUrls.profileSubmit)
  Future<LoginResponseDto> submitProfile(
      @Body() OnboardingRequestDto onboardingRequest);
}
