// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'verification_request_dto.freezed.dart';

part 'verification_request_dto.g.dart';

@freezed
class VerificationRequestDto with _$VerificationRequestDto {
  const factory VerificationRequestDto(
   @JsonKey(name: "request_id") String requestId,
    String code,
  ) = _VerificationRequestDto;

  factory VerificationRequestDto.fromJson(Map<String, Object?> json) =>
      _$VerificationRequestDtoFromJson(json);
}
