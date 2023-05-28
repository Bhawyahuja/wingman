// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'verification_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

VerificationRequestDto _$VerificationRequestDtoFromJson(
    Map<String, dynamic> json) {
  return _VerificationRequestDto.fromJson(json);
}

/// @nodoc
mixin _$VerificationRequestDto {
  @JsonKey(name: "request_id")
  String get requestId => throw _privateConstructorUsedError;
  String get code => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $VerificationRequestDtoCopyWith<VerificationRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $VerificationRequestDtoCopyWith<$Res> {
  factory $VerificationRequestDtoCopyWith(VerificationRequestDto value,
          $Res Function(VerificationRequestDto) then) =
      _$VerificationRequestDtoCopyWithImpl<$Res, VerificationRequestDto>;
  @useResult
  $Res call({@JsonKey(name: "request_id") String requestId, String code});
}

/// @nodoc
class _$VerificationRequestDtoCopyWithImpl<$Res,
        $Val extends VerificationRequestDto>
    implements $VerificationRequestDtoCopyWith<$Res> {
  _$VerificationRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? code = null,
  }) {
    return _then(_value.copyWith(
      requestId: null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      code: null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_VerificationRequestDtoCopyWith<$Res>
    implements $VerificationRequestDtoCopyWith<$Res> {
  factory _$$_VerificationRequestDtoCopyWith(_$_VerificationRequestDto value,
          $Res Function(_$_VerificationRequestDto) then) =
      __$$_VerificationRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({@JsonKey(name: "request_id") String requestId, String code});
}

/// @nodoc
class __$$_VerificationRequestDtoCopyWithImpl<$Res>
    extends _$VerificationRequestDtoCopyWithImpl<$Res,
        _$_VerificationRequestDto>
    implements _$$_VerificationRequestDtoCopyWith<$Res> {
  __$$_VerificationRequestDtoCopyWithImpl(_$_VerificationRequestDto _value,
      $Res Function(_$_VerificationRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? requestId = null,
    Object? code = null,
  }) {
    return _then(_$_VerificationRequestDto(
      null == requestId
          ? _value.requestId
          : requestId // ignore: cast_nullable_to_non_nullable
              as String,
      null == code
          ? _value.code
          : code // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_VerificationRequestDto implements _VerificationRequestDto {
  const _$_VerificationRequestDto(
      @JsonKey(name: "request_id") this.requestId, this.code);

  factory _$_VerificationRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_VerificationRequestDtoFromJson(json);

  @override
  @JsonKey(name: "request_id")
  final String requestId;
  @override
  final String code;

  @override
  String toString() {
    return 'VerificationRequestDto(requestId: $requestId, code: $code)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_VerificationRequestDto &&
            (identical(other.requestId, requestId) ||
                other.requestId == requestId) &&
            (identical(other.code, code) || other.code == code));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, requestId, code);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_VerificationRequestDtoCopyWith<_$_VerificationRequestDto> get copyWith =>
      __$$_VerificationRequestDtoCopyWithImpl<_$_VerificationRequestDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_VerificationRequestDtoToJson(
      this,
    );
  }
}

abstract class _VerificationRequestDto implements VerificationRequestDto {
  const factory _VerificationRequestDto(
      @JsonKey(name: "request_id") final String requestId,
      final String code) = _$_VerificationRequestDto;

  factory _VerificationRequestDto.fromJson(Map<String, dynamic> json) =
      _$_VerificationRequestDto.fromJson;

  @override
  @JsonKey(name: "request_id")
  String get requestId;
  @override
  String get code;
  @override
  @JsonKey(ignore: true)
  _$$_VerificationRequestDtoCopyWith<_$_VerificationRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
