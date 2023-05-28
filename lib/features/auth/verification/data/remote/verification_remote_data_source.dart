import 'package:dio/dio.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';
import 'package:wingman/features/auth/verification/data/remote/models/request_dto/verification_request_dto.dart';
import 'package:wingman/features/auth/verification/data/remote/models/response_dto/verification_response_dto.dart';
import 'package:wingman/features/auth/verification/data/remote/verification_client.dart';
import 'package:wingman/interceptors/json_fix_interceptor.dart';

class VerificationRemoteDataSource {
  VerificationRemoteDataSource._(this._client);

  final VerificationClient _client;

  factory VerificationRemoteDataSource() {
    Dio dio = Dio();

    dio.options = BaseOptions(contentType: Headers.jsonContentType);

    dio.interceptors.add(PrettyDioLogger(requestBody: true));

    dio.interceptors.add(JsonFixInterceptor());

    VerificationClient client = VerificationClient(dio);
    return VerificationRemoteDataSource._(client);
  }

  Future<VerificationResponseDto> verifyOtp(String requestId, String otp) {
    VerificationRequestDto verificationRequest = VerificationRequestDto(
      requestId,
      otp,
    );
    return _client.verifyOtp(verificationRequest);
  }
}
