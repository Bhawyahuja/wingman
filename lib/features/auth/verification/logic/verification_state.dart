part of 'verification_cubit.dart';

@freezed
class VerificationState with _$VerificationState {
  const factory VerificationState.initial() = _Initial;

  const factory VerificationState.loading() = _Loading;

  const factory VerificationState.success(bool profileExists) =
      _Success;

  const factory VerificationState.failure(dynamic e, String message) = _Failure;
}
