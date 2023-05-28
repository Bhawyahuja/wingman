// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'login_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LoginRequestDto _$LoginRequestDtoFromJson(Map<String, dynamic> json) {
  return _LoginRequestDto.fromJson(json);
}

/// @nodoc
mixin _$LoginRequestDto {
  String get mobile => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LoginRequestDtoCopyWith<LoginRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LoginRequestDtoCopyWith<$Res> {
  factory $LoginRequestDtoCopyWith(
          LoginRequestDto value, $Res Function(LoginRequestDto) then) =
      _$LoginRequestDtoCopyWithImpl<$Res, LoginRequestDto>;
  @useResult
  $Res call({String mobile});
}

/// @nodoc
class _$LoginRequestDtoCopyWithImpl<$Res, $Val extends LoginRequestDto>
    implements $LoginRequestDtoCopyWith<$Res> {
  _$LoginRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
  }) {
    return _then(_value.copyWith(
      mobile: null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_LoginRequestDtoCopyWith<$Res>
    implements $LoginRequestDtoCopyWith<$Res> {
  factory _$$_LoginRequestDtoCopyWith(
          _$_LoginRequestDto value, $Res Function(_$_LoginRequestDto) then) =
      __$$_LoginRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String mobile});
}

/// @nodoc
class __$$_LoginRequestDtoCopyWithImpl<$Res>
    extends _$LoginRequestDtoCopyWithImpl<$Res, _$_LoginRequestDto>
    implements _$$_LoginRequestDtoCopyWith<$Res> {
  __$$_LoginRequestDtoCopyWithImpl(
      _$_LoginRequestDto _value, $Res Function(_$_LoginRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? mobile = null,
  }) {
    return _then(_$_LoginRequestDto(
      null == mobile
          ? _value.mobile
          : mobile // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_LoginRequestDto implements _LoginRequestDto {
  const _$_LoginRequestDto(this.mobile);

  factory _$_LoginRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_LoginRequestDtoFromJson(json);

  @override
  final String mobile;

  @override
  String toString() {
    return 'LoginRequestDto(mobile: $mobile)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_LoginRequestDto &&
            (identical(other.mobile, mobile) || other.mobile == mobile));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, mobile);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_LoginRequestDtoCopyWith<_$_LoginRequestDto> get copyWith =>
      __$$_LoginRequestDtoCopyWithImpl<_$_LoginRequestDto>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_LoginRequestDtoToJson(
      this,
    );
  }
}

abstract class _LoginRequestDto implements LoginRequestDto {
  const factory _LoginRequestDto(final String mobile) = _$_LoginRequestDto;

  factory _LoginRequestDto.fromJson(Map<String, dynamic> json) =
      _$_LoginRequestDto.fromJson;

  @override
  String get mobile;
  @override
  @JsonKey(ignore: true)
  _$$_LoginRequestDtoCopyWith<_$_LoginRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
