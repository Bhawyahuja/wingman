import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wingman/features/auth/login/data/remote/models/response_dto/login_response_dto.dart';
import 'package:wingman/features/onboarding/data/onboarding_repository.dart';

part 'onboarding_cubit.freezed.dart';

part 'onboarding_state.dart';

class OnboardingCubit extends Cubit<OnboardingState> {
  OnboardingCubit() : super(const OnboardingState.initial()) {
    _repository = OnboardingRepository();
  }

  late OnboardingRepository _repository;

  void submitProfile(String name, String email) async {
    emit(const OnboardingState.loading());
    try {
      LoginResponseDto response = await _repository.submitProfile(name, email);
      if (response.status) {
        emit(OnboardingState.success(response.response));
      } else {
        emit(
          const OnboardingState.failure(
            "status_false",
            "Something went wrong!",
          ),
        );
      }
    } catch (e) {
      emit(OnboardingState.failure(e, "Something went wrong!"));
    }
  }
}
