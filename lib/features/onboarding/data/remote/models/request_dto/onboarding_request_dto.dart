// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'onboarding_request_dto.freezed.dart';

part 'onboarding_request_dto.g.dart';

@freezed
class OnboardingRequestDto with _$OnboardingRequestDto {
  const factory OnboardingRequestDto(
    String name,
    String email,
  ) = _OnboardingRequestDto;

  factory OnboardingRequestDto.fromJson(Map<String, Object?> json) =>
      _$OnboardingRequestDtoFromJson(json);
}
