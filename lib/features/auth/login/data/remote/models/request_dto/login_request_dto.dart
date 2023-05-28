import 'package:freezed_annotation/freezed_annotation.dart';

part 'login_request_dto.freezed.dart';
part 'login_request_dto.g.dart';

@freezed
class LoginRequestDto with _$LoginRequestDto {
  const factory LoginRequestDto(String mobile) = _LoginRequestDto;

  factory LoginRequestDto.fromJson(Map<String, Object?> json) =>
      _$LoginRequestDtoFromJson(json);
}
