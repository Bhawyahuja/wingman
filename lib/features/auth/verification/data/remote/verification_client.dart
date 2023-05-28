import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wingman/app_config/app_urls.dart';
import 'package:wingman/features/auth/verification/data/remote/models/request_dto/verification_request_dto.dart';
import 'package:wingman/features/auth/verification/data/remote/models/response_dto/verification_response_dto.dart';

part 'verification_client.g.dart';

@RestApi(baseUrl: AppUrls.baseUrl)
abstract class VerificationClient {
  factory VerificationClient(Dio dio, {String? baseUrl}) = _VerificationClient;

  @POST(AppUrls.verifyOtp)
  Future<VerificationResponseDto> verifyOtp(
    @Body() VerificationRequestDto verificationRequest,
  );
}
