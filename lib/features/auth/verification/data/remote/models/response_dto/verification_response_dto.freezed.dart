// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerificationResponseDto _$VerificationResponseDtoFromJson(
    Map<String, dynamic> json) {
  return _VerificationResponsetDto.fromJson(json);
}

/// @nodoc
mixin _$VerificationResponseDto {
  bool get status => throw _privateConstructorUsedError;
  @JsonKey(name: "profile_exists")
  bool get profileExists => throw _privateConstructorUsedError;
  String get jwt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationResponseDtoCopyWith<VerificationResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationResponseDtoCopyWith<$Res> {
  factory $VerificationResponseDtoCopyWith(VerificationResponseDto value,
          $Res Function(VerificationResponseDto) then) =
      _$VerificationResponseDtoCopyWithImpl<$Res, VerificationResponseDto>;
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: "profile_exists") bool profileExists,
      String jwt});
}

/// @nodoc
class _$VerificationResponseDtoCopyWithImpl<$Res,
        $Val extends VerificationResponseDto>
    implements $VerificationResponseDtoCopyWith<$Res> {
  _$VerificationResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profileExists = null,
    Object? jwt = null,
  }) {
    return _then(_value.copyWith(
      status: null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      profileExists: null == profileExists
          ? _value.profileExists
          : profileExists // ignore: cast_nullable_to_non_nullable
              as bool,
      jwt: null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerificationResponsetDtoCopyWith<$Res>
    implements $VerificationResponseDtoCopyWith<$Res> {
  factory _$$_VerificationResponsetDtoCopyWith(
          _$_VerificationResponsetDto value,
          $Res Function(_$_VerificationResponsetDto) then) =
      __$$_VerificationResponsetDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool status,
      @JsonKey(name: "profile_exists") bool profileExists,
      String jwt});
}

/// @nodoc
class __$$_VerificationResponsetDtoCopyWithImpl<$Res>
    extends _$VerificationResponseDtoCopyWithImpl<$Res,
        _$_VerificationResponsetDto>
    implements _$$_VerificationResponsetDtoCopyWith<$Res> {
  __$$_VerificationResponsetDtoCopyWithImpl(_$_VerificationResponsetDto _value,
      $Res Function(_$_VerificationResponsetDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? status = null,
    Object? profileExists = null,
    Object? jwt = null,
  }) {
    return _then(_$_VerificationResponsetDto(
      null == status
          ? _value.status
          : status // ignore: cast_nullable_to_non_nullable
              as bool,
      null == profileExists
          ? _value.profileExists
          : profileExists // ignore: cast_nullable_to_non_nullable
              as bool,
      null == jwt
          ? _value.jwt
          : jwt // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerificationResponsetDto implements _VerificationResponsetDto {
  const _$_VerificationResponsetDto(this.status,
      @JsonKey(name: "profile_exists") this.profileExists, this.jwt);

  factory _$_VerificationResponsetDto.fromJson(Map<String, dynamic> json) =>
      _$$_VerificationResponsetDtoFromJson(json);

  @override
  final bool status;
  @override
  @JsonKey(name: "profile_exists")
  final bool profileExists;
  @override
  final String jwt;

  @override
  String toString() {
    return 'VerificationResponseDto(status: $status, profileExists: $profileExists, jwt: $jwt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationResponsetDto &&
            (identical(other.status, status) || other.status == status) &&
            (identical(other.profileExists, profileExists) ||
                other.profileExists == profileExists) &&
            (identical(other.jwt, jwt) || other.jwt == jwt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, status, profileExists, jwt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerificationResponsetDtoCopyWith<_$_VerificationResponsetDto>
      get copyWith => __$$_VerificationResponsetDtoCopyWithImpl<
          _$_VerificationResponsetDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerificationResponsetDtoToJson(
      this,
    );
  }
}

abstract class _VerificationResponsetDto implements VerificationResponseDto {
  const factory _VerificationResponsetDto(
      final bool status,
      @JsonKey(name: "profile_exists") final bool profileExists,
      final String jwt) = _$_VerificationResponsetDto;

  factory _VerificationResponsetDto.fromJson(Map<String, dynamic> json) =
      _$_VerificationResponsetDto.fromJson;

  @override
  bool get status;
  @override
  @JsonKey(name: "profile_exists")
  bool get profileExists;
  @override
  String get jwt;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationResponsetDtoCopyWith<_$_VerificationResponsetDto>
      get copyWith => throw _privateConstructorUsedError;
}
