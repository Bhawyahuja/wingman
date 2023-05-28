part of 'onboarding_cubit.dart';

@freezed
class OnboardingState with _$OnboardingState {
  const factory OnboardingState.initial() = _Initial;

  const factory OnboardingState.loading() = _Loading;

  const factory OnboardingState.success(String message) = _Success;

  const factory OnboardingState.failure(dynamic e, String message) = _Failure;
}
