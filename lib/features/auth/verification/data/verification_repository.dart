import 'package:wingman/features/auth/verification/data/remote/models/response_dto/verification_response_dto.dart';
import 'package:wingman/features/auth/verification/data/remote/verification_remote_data_source.dart';
import 'package:wingman/utils/local_data_source.dart';

class VerificationRepository {
  final VerificationRemoteDataSource _remoteDataSource =
      VerificationRemoteDataSource();
  final LocalDataSource _localDataSource = LocalDataSource();

  Future<VerificationResponseDto> verifyOtp(String otp) async {
    String requestId = await _localDataSource.getRequestId() ?? "00000000";
    return _remoteDataSource.verifyOtp(requestId, otp).then((value) async {
      if (value.status) {
        _localDataSource.setJwt(value.jwt);
      }
      return value;
    });
  }
}
