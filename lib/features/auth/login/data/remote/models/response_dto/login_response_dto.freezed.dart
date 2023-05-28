// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginResponseDto _$LoginResponseDtoFromJson(Map<String, dynamic> json) {
  return _LoginResponseDto.fromJson(json);
}

/// @nodoc
mixin _$LoginResponseDto {
  bool get status => throw _privateConstructorUsedError;
  String get response => throw _privateConstructorUsedError;
  @JsonKey(name: "request_id")
  String get requestId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginResponseDtoCopyWith<LoginResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginResponseDtoCopyWith<$Res> {
  factory $LoginResponseDtoCopyWith(
          LoginResponseDto value, $Res Function(LoginResponseDto) then) =
      _$LoginResponseDtoCopyWithImpl<$Res, LoginResponseDto>;
  @useResult
  $Res call(
      {bool status,
      String response,
      @JsonKey(name: "request_id") String requestId});
}

/// @nodoc
class _$LoginResponseDtoCopyWithImpl<$Res, $Val extends LoginResponseDto>
    implements $LoginResponseDtoCopyWith<$Res> {
  _$LoginResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = null,
    Object? requestId = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      response: null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginResponseDtoCopyWith<$Res>
    implements $LoginResponseDtoCopyWith<$Res> {
  factory _$$_LoginResponseDtoCopyWith(
          _$_LoginResponseDto value, $Res Function(_$_LoginResponseDto) then) =
      __$$_LoginResponseDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      String response,
      @JsonKey(name: "request_id") String requestId});
}

/// @nodoc
class __$$_LoginResponseDtoCopyWithImpl<$Res>
    extends _$LoginResponseDtoCopyWithImpl<$Res, _$_LoginResponseDto>
    implements _$$_LoginResponseDtoCopyWith<$Res> {
  __$$_LoginResponseDtoCopyWithImpl(
      _$_LoginResponseDto _value, $Res Function(_$_LoginResponseDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? response = null,
    Object? requestId = null,
  }) {
    return _then(_$_LoginResponseDto(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      null == response
          ? _value.response
          : response // ignore: cast_nullable_to_non_nullable
              as String,
      null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginResponseDto implements _LoginResponseDto {
  const _$_LoginResponseDto(
      this.status, this.response, @JsonKey(name: "request_id") this.requestId);

  factory _$_LoginResponseDto.fromJson(Map<String, dynamic> json) =>
      _$$_LoginResponseDtoFromJson(json);

  @override
  final bool status;
  @override
  final String response;
  @override
  @JsonKey(name: "request_id")
  final String requestId;

  @override
  String toString() {
    return 'LoginResponseDto(status: $status, response: $response, requestId: $requestId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginResponseDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.response, response) ||
                other.response == response) &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, response, requestId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginResponseDtoCopyWith<_$_LoginResponseDto> get copyWith =>
      __$$_LoginResponseDtoCopyWithImpl<_$_LoginResponseDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginResponseDtoToJson(
      this,
    );
  }
}

abstract class _LoginResponseDto implements LoginResponseDto {
  const factory _LoginResponseDto(final bool status, final String response,
          @JsonKey(name: "request_id") final String requestId) =
      _$_LoginResponseDto;

  factory _LoginResponseDto.fromJson(Map<String, dynamic> json) =
      _$_LoginResponseDto.fromJson;

  @override
  bool get status;
  @override
  String get response;
  @override
  @JsonKey(name: "request_id")
  String get requestId;
  @override
  @JsonKey(ignore: true)
  _$$_LoginResponseDtoCopyWith<_$_LoginResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}
