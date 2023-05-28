// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'verification_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_VerificationResponsetDto _$$_VerificationResponsetDtoFromJson(
        Map<String, dynamic> json) =>
    _$_VerificationResponsetDto(
      json['status'] as bool,
      json['profile_exists'] as bool,
      json['jwt'] as String,
    );

Map<String, dynamic> _$$_VerificationResponsetDtoToJson(
        _$_VerificationResponsetDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'profile_exists': instance.profileExists,
      'jwt': instance.jwt,
    };
