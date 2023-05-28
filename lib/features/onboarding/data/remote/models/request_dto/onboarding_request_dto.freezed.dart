// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'onboarding_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OnboardingRequestDto _$OnboardingRequestDtoFromJson(Map<String, dynamic> json) {
  return _OnboardingRequestDto.fromJson(json);
}

/// @nodoc
mixin _$OnboardingRequestDto {
  String get name => throw _privateConstructorUsedError;
  String get email => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OnboardingRequestDtoCopyWith<OnboardingRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OnboardingRequestDtoCopyWith<$Res> {
  factory $OnboardingRequestDtoCopyWith(OnboardingRequestDto value,
          $Res Function(OnboardingRequestDto) then) =
      _$OnboardingRequestDtoCopyWithImpl<$Res, OnboardingRequestDto>;
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class _$OnboardingRequestDtoCopyWithImpl<$Res,
        $Val extends OnboardingRequestDto>
    implements $OnboardingRequestDtoCopyWith<$Res> {
  _$OnboardingRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_value.copyWith(
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      email: null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OnboardingRequestDtoCopyWith<$Res>
    implements $OnboardingRequestDtoCopyWith<$Res> {
  factory _$$_OnboardingRequestDtoCopyWith(_$_OnboardingRequestDto value,
          $Res Function(_$_OnboardingRequestDto) then) =
      __$$_OnboardingRequestDtoCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String name, String email});
}

/// @nodoc
class __$$_OnboardingRequestDtoCopyWithImpl<$Res>
    extends _$OnboardingRequestDtoCopyWithImpl<$Res, _$_OnboardingRequestDto>
    implements _$$_OnboardingRequestDtoCopyWith<$Res> {
  __$$_OnboardingRequestDtoCopyWithImpl(_$_OnboardingRequestDto _value,
      $Res Function(_$_OnboardingRequestDto) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? name = null,
    Object? email = null,
  }) {
    return _then(_$_OnboardingRequestDto(
      null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      null == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OnboardingRequestDto implements _OnboardingRequestDto {
  const _$_OnboardingRequestDto(this.name, this.email);

  factory _$_OnboardingRequestDto.fromJson(Map<String, dynamic> json) =>
      _$$_OnboardingRequestDtoFromJson(json);

  @override
  final String name;
  @override
  final String email;

  @override
  String toString() {
    return 'OnboardingRequestDto(name: $name, email: $email)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OnboardingRequestDto &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.email, email) || other.email == email));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, name, email);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OnboardingRequestDtoCopyWith<_$_OnboardingRequestDto> get copyWith =>
      __$$_OnboardingRequestDtoCopyWithImpl<_$_OnboardingRequestDto>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OnboardingRequestDtoToJson(
      this,
    );
  }
}

abstract class _OnboardingRequestDto implements OnboardingRequestDto {
  const factory _OnboardingRequestDto(final String name, final String email) =
      _$_OnboardingRequestDto;

  factory _OnboardingRequestDto.fromJson(Map<String, dynamic> json) =
      _$_OnboardingRequestDto.fromJson;

  @override
  String get name;
  @override
  String get email;
  @override
  @JsonKey(ignore: true)
  _$$_OnboardingRequestDtoCopyWith<_$_OnboardingRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}
