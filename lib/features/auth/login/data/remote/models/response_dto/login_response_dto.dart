// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_response_dto.freezed.dart';

part 'login_response_dto.g.dart';

@freezed
class LoginResponseDto with _$LoginResponseDto {
  const factory LoginResponseDto(
    bool status,
    String response,
    @JsonKey(name: "request_id") String? requestId,
  ) = _LoginResponseDto;

  factory LoginResponseDto.fromJson(Map<String, Object?> json) =>
      _$LoginResponseDtoFromJson(json);
}
