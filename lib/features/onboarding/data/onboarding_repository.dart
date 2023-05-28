import 'package:wingman/features/auth/login/data/remote/models/response_dto/login_response_dto.dart';
import 'package:wingman/features/onboarding/data/remote/onboarding_remote_data_source.dart';
import 'package:wingman/utils/local_data_source.dart';

class OnboardingRepository {
  final OnboardingRemoteDataSource _remoteDataSource =
      OnboardingRemoteDataSource();
  final LocalDataSource _localDataSource = LocalDataSource();

  Future<LoginResponseDto> submitProfile(String name, String email) {
    return _remoteDataSource.submitProfile(name, email).then((value) async {
      if (value.status) {
        await _localDataSource.setOnboarded();
      }
      return value;
    });
  }
}
