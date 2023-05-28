import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:wingman/features/auth/verification/data/remote/models/response_dto/verification_response_dto.dart';
import 'package:wingman/features/auth/verification/data/verification_repository.dart';

part 'verification_cubit.freezed.dart';

part 'verification_state.dart';

class VerificationCubit extends Cubit<VerificationState> {
  VerificationCubit() : super(const VerificationState.initial()) {
    _repository = VerificationRepository();
  }

  late VerificationRepository _repository;

  void verifyOtp(String otp) async {
    emit(const VerificationState.loading());
    bool isOtpValid = otp.length == 6;
    if (isOtpValid) {
      try {
        VerificationResponseDto response = await _repository.verifyOtp(otp);
        if (response.status) {
          emit(VerificationState.success(response.profileExists));
        } else {
          emit(
            const VerificationState.failure(
              "status_false",
              "Something went wrong!",
            ),
          );
        }
      } catch (e) {
        emit(VerificationState.failure(e, "Something went wrong!"));
      }
    } else {
      emit(
        const VerificationState.failure(
          "invalid_otp",
          "Something went wrong!",
        ),
      );
    }
  }
}
