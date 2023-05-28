import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:libphonenumber/libphonenumber.dart';
import 'package:wingman/features/auth/login/data/login_repository.dart';
import 'package:wingman/features/auth/login/data/remote/models/response_dto/login_response_dto.dart';

part 'login_cubit.freezed.dart';

part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  LoginCubit() : super(const LoginState.initial()) {
    _repository = LoginRepository();
  }

  late LoginRepository _repository;

  void login(String isoCode, String mobile) async {
    emit(const LoginState.loading());
    bool isValid = (await PhoneNumberUtil.isValidPhoneNumber(
            phoneNumber: mobile, isoCode: isoCode)) ??
        false;
    if (isValid) {
      try {
        String? phoneNumber = await PhoneNumberUtil.normalizePhoneNumber(
            phoneNumber: mobile, isoCode: isoCode);
        if (phoneNumber == null) {
          emit(
            const LoginState.failure(
              "wrong_number",
              "Please enter a valid phone number",
            ),
          );
        } else {
          LoginResponseDto response = await _repository.login(mobile);
          if (response.status) {
            emit(LoginState.success(phoneNumber, response.response));
          } else {
            emit(
              const LoginState.failure(
                "status_false",
                "Something went wrong!",
              ),
            );
          }
        }
      } catch (e) {
        emit(LoginState.failure(e, "Something went wrong!"));
      }
    } else {
      emit(
        const LoginState.failure(
          "invalid_phone_number",
          "Please enter a valid phone number",
        ),
      );
    }
  }
}
