// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_response_dto.freezed.dart';

part 'verification_response_dto.g.dart';

@freezed
class VerificationResponseDto with _$VerificationResponseDto {
  const factory VerificationResponseDto(
    bool status,
    @JsonKey(name: "profile_exists") bool profileExists,
    String jwt,
  ) = _VerificationResponsetDto;

  factory VerificationResponseDto.fromJson(Map<String, Object?> json) =>
      _$VerificationResponseDtoFromJson(json);
}
