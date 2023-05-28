import 'package:dio/dio.dart';
import 'package:retrofit/retrofit.dart';
import 'package:wingman/features/auth/verification/data/remote/models/request_dto/verification_request_dto.dart';
import 'package:wingman/features/auth/verification/data/remote/models/response_dto/verification_response_dto.dart';

part 'verification_client.g.dart';

@RestApi()
abstract class VerificationClient {
  factory VerificationClient(Dio dio, {String? baseUrl}) = _VerificationClient;

  @POST("https://test-otp-api.7474224.xyz/verifyotp.php")
  Future<VerificationResponseDto> verifyOtp(
    @Body() VerificationRequestDto verificationRequest,
  );
}
