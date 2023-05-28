// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'login_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_LoginResponseDto _$$_LoginResponseDtoFromJson(Map<String, dynamic> json) =>
    _$_LoginResponseDto(
      json['status'] as bool,
      json['response'] as String,
      json['request_id'] as String?,
    );

Map<String, dynamic> _$$_LoginResponseDtoToJson(_$_LoginResponseDto instance) =>
    <String, dynamic>{
      'status': instance.status,
      'response': instance.response,
      'request_id': instance.requestId,
    };
