part of 'login_cubit.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.loading() = _Loading;

  const factory LoginState.success(String mobileNumber, String message) = _Success;

  const factory LoginState.failure(dynamic e, String message) = _Failure;
}
