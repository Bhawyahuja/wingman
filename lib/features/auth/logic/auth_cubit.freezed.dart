// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'auth_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() onboarded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? onboarded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? onboarded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Onboarded value) onboarded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Uninitialized value)? uninitialized,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Onboarded value)? onboarded,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Onboarded value)? onboarded,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res, AuthState>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res, $Val extends AuthState>
    implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;
}

/// @nodoc
abstract class _$$_UninitializedCopyWith<$Res> {
  factory _$$_UninitializedCopyWith(
          _$_Uninitialized value, $Res Function(_$_Uninitialized) then) =
      __$$_UninitializedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UninitializedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Uninitialized>
    implements _$$_UninitializedCopyWith<$Res> {
  __$$_UninitializedCopyWithImpl(
      _$_Uninitialized _value, $Res Function(_$_Uninitialized) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Uninitialized implements _Uninitialized {
  const _$_Uninitialized();

  @override
  String toString() {
    return 'AuthState.uninitialized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Uninitialized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() onboarded,
  }) {
    return uninitialized();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? onboarded,
  }) {
    return uninitialized?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? onboarded,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Onboarded value) onboarded,
  }) {
    return uninitialized(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Uninitialized value)? uninitialized,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Onboarded value)? onboarded,
  }) {
    return uninitialized?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Onboarded value)? onboarded,
    required TResult orElse(),
  }) {
    if (uninitialized != null) {
      return uninitialized(this);
    }
    return orElse();
  }
}

abstract class _Uninitialized implements AuthState {
  const factory _Uninitialized() = _$_Uninitialized;
}

/// @nodoc
abstract class _$$_UnauthenticatedCopyWith<$Res> {
  factory _$$_UnauthenticatedCopyWith(
          _$_Unauthenticated value, $Res Function(_$_Unauthenticated) then) =
      __$$_UnauthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_UnauthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Unauthenticated>
    implements _$$_UnauthenticatedCopyWith<$Res> {
  __$$_UnauthenticatedCopyWithImpl(
      _$_Unauthenticated _value, $Res Function(_$_Unauthenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Unauthenticated implements _Unauthenticated {
  const _$_Unauthenticated();

  @override
  String toString() {
    return 'AuthState.unauthenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Unauthenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() onboarded,
  }) {
    return unauthenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? onboarded,
  }) {
    return unauthenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? onboarded,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Onboarded value) onboarded,
  }) {
    return unauthenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Uninitialized value)? uninitialized,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Onboarded value)? onboarded,
  }) {
    return unauthenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Onboarded value)? onboarded,
    required TResult orElse(),
  }) {
    if (unauthenticated != null) {
      return unauthenticated(this);
    }
    return orElse();
  }
}

abstract class _Unauthenticated implements AuthState {
  const factory _Unauthenticated() = _$_Unauthenticated;
}

/// @nodoc
abstract class _$$_AuthenticatedCopyWith<$Res> {
  factory _$$_AuthenticatedCopyWith(
          _$_Authenticated value, $Res Function(_$_Authenticated) then) =
      __$$_AuthenticatedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_AuthenticatedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Authenticated>
    implements _$$_AuthenticatedCopyWith<$Res> {
  __$$_AuthenticatedCopyWithImpl(
      _$_Authenticated _value, $Res Function(_$_Authenticated) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Authenticated implements _Authenticated {
  const _$_Authenticated();

  @override
  String toString() {
    return 'AuthState.authenticated()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Authenticated);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() onboarded,
  }) {
    return authenticated();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? onboarded,
  }) {
    return authenticated?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? onboarded,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Onboarded value) onboarded,
  }) {
    return authenticated(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Uninitialized value)? uninitialized,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Onboarded value)? onboarded,
  }) {
    return authenticated?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Onboarded value)? onboarded,
    required TResult orElse(),
  }) {
    if (authenticated != null) {
      return authenticated(this);
    }
    return orElse();
  }
}

abstract class _Authenticated implements AuthState {
  const factory _Authenticated() = _$_Authenticated;
}

/// @nodoc
abstract class _$$_OnboardedCopyWith<$Res> {
  factory _$$_OnboardedCopyWith(
          _$_Onboarded value, $Res Function(_$_Onboarded) then) =
      __$$_OnboardedCopyWithImpl<$Res>;
}

/// @nodoc
class __$$_OnboardedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res, _$_Onboarded>
    implements _$$_OnboardedCopyWith<$Res> {
  __$$_OnboardedCopyWithImpl(
      _$_Onboarded _value, $Res Function(_$_Onboarded) _then)
      : super(_value, _then);
}

/// @nodoc

class _$_Onboarded implements _Onboarded {
  const _$_Onboarded();

  @override
  String toString() {
    return 'AuthState.onboarded()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$_Onboarded);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() uninitialized,
    required TResult Function() unauthenticated,
    required TResult Function() authenticated,
    required TResult Function() onboarded,
  }) {
    return onboarded();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? uninitialized,
    TResult? Function()? unauthenticated,
    TResult? Function()? authenticated,
    TResult? Function()? onboarded,
  }) {
    return onboarded?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? uninitialized,
    TResult Function()? unauthenticated,
    TResult Function()? authenticated,
    TResult Function()? onboarded,
    required TResult orElse(),
  }) {
    if (onboarded != null) {
      return onboarded();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Uninitialized value) uninitialized,
    required TResult Function(_Unauthenticated value) unauthenticated,
    required TResult Function(_Authenticated value) authenticated,
    required TResult Function(_Onboarded value) onboarded,
  }) {
    return onboarded(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Uninitialized value)? uninitialized,
    TResult? Function(_Unauthenticated value)? unauthenticated,
    TResult? Function(_Authenticated value)? authenticated,
    TResult? Function(_Onboarded value)? onboarded,
  }) {
    return onboarded?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Uninitialized value)? uninitialized,
    TResult Function(_Unauthenticated value)? unauthenticated,
    TResult Function(_Authenticated value)? authenticated,
    TResult Function(_Onboarded value)? onboarded,
    required TResult orElse(),
  }) {
    if (onboarded != null) {
      return onboarded(this);
    }
    return orElse();
  }
}

abstract class _Onboarded implements AuthState {
  const factory _Onboarded() = _$_Onboarded;
}
