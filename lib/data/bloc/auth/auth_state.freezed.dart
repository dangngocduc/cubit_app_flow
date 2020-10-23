// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies

part of 'auth_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

/// @nodoc
class _$AuthStateTearOff {
  const _$AuthStateTearOff();

// ignore: unused_element
  AuthStateuthorized authorized(UserInfo userInfo) {
    return AuthStateuthorized(
      userInfo,
    );
  }

// ignore: unused_element
  AuthStateUnAuthorized unauthorized() {
    return const AuthStateUnAuthorized();
  }
}

/// @nodoc
// ignore: unused_element
const $AuthState = _$AuthStateTearOff();

/// @nodoc
mixin _$AuthState {
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authorized(UserInfo userInfo),
    @required Result unauthorized(),
  });
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authorized(UserInfo userInfo),
    Result unauthorized(),
    @required Result orElse(),
  });
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authorized(AuthStateuthorized value),
    @required Result unauthorized(AuthStateUnAuthorized value),
  });
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authorized(AuthStateuthorized value),
    Result unauthorized(AuthStateUnAuthorized value),
    @required Result orElse(),
  });
}

/// @nodoc
abstract class $AuthStateCopyWith<$Res> {
  factory $AuthStateCopyWith(AuthState value, $Res Function(AuthState) then) =
      _$AuthStateCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateCopyWithImpl<$Res> implements $AuthStateCopyWith<$Res> {
  _$AuthStateCopyWithImpl(this._value, this._then);

  final AuthState _value;
  // ignore: unused_field
  final $Res Function(AuthState) _then;
}

/// @nodoc
abstract class $AuthStateuthorizedCopyWith<$Res> {
  factory $AuthStateuthorizedCopyWith(
          AuthStateuthorized value, $Res Function(AuthStateuthorized) then) =
      _$AuthStateuthorizedCopyWithImpl<$Res>;
  $Res call({UserInfo userInfo});
}

/// @nodoc
class _$AuthStateuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateuthorizedCopyWith<$Res> {
  _$AuthStateuthorizedCopyWithImpl(
      AuthStateuthorized _value, $Res Function(AuthStateuthorized) _then)
      : super(_value, (v) => _then(v as AuthStateuthorized));

  @override
  AuthStateuthorized get _value => super._value as AuthStateuthorized;

  @override
  $Res call({
    Object userInfo = freezed,
  }) {
    return _then(AuthStateuthorized(
      userInfo == freezed ? _value.userInfo : userInfo as UserInfo,
    ));
  }
}

/// @nodoc
class _$AuthStateuthorized implements AuthStateuthorized {
  const _$AuthStateuthorized(this.userInfo) : assert(userInfo != null);

  @override
  final UserInfo userInfo;

  @override
  String toString() {
    return 'AuthState.authorized(userInfo: $userInfo)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other is AuthStateuthorized &&
            (identical(other.userInfo, userInfo) ||
                const DeepCollectionEquality()
                    .equals(other.userInfo, userInfo)));
  }

  @override
  int get hashCode =>
      runtimeType.hashCode ^ const DeepCollectionEquality().hash(userInfo);

  @override
  $AuthStateuthorizedCopyWith<AuthStateuthorized> get copyWith =>
      _$AuthStateuthorizedCopyWithImpl<AuthStateuthorized>(this, _$identity);

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authorized(UserInfo userInfo),
    @required Result unauthorized(),
  }) {
    assert(authorized != null);
    assert(unauthorized != null);
    return authorized(userInfo);
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authorized(UserInfo userInfo),
    Result unauthorized(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authorized != null) {
      return authorized(userInfo);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authorized(AuthStateuthorized value),
    @required Result unauthorized(AuthStateUnAuthorized value),
  }) {
    assert(authorized != null);
    assert(unauthorized != null);
    return authorized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authorized(AuthStateuthorized value),
    Result unauthorized(AuthStateUnAuthorized value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (authorized != null) {
      return authorized(this);
    }
    return orElse();
  }
}

abstract class AuthStateuthorized implements AuthState {
  const factory AuthStateuthorized(UserInfo userInfo) = _$AuthStateuthorized;

  UserInfo get userInfo;
  $AuthStateuthorizedCopyWith<AuthStateuthorized> get copyWith;
}

/// @nodoc
abstract class $AuthStateUnAuthorizedCopyWith<$Res> {
  factory $AuthStateUnAuthorizedCopyWith(AuthStateUnAuthorized value,
          $Res Function(AuthStateUnAuthorized) then) =
      _$AuthStateUnAuthorizedCopyWithImpl<$Res>;
}

/// @nodoc
class _$AuthStateUnAuthorizedCopyWithImpl<$Res>
    extends _$AuthStateCopyWithImpl<$Res>
    implements $AuthStateUnAuthorizedCopyWith<$Res> {
  _$AuthStateUnAuthorizedCopyWithImpl(
      AuthStateUnAuthorized _value, $Res Function(AuthStateUnAuthorized) _then)
      : super(_value, (v) => _then(v as AuthStateUnAuthorized));

  @override
  AuthStateUnAuthorized get _value => super._value as AuthStateUnAuthorized;
}

/// @nodoc
class _$AuthStateUnAuthorized implements AuthStateUnAuthorized {
  const _$AuthStateUnAuthorized();

  @override
  String toString() {
    return 'AuthState.unauthorized()';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) || (other is AuthStateUnAuthorized);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  Result when<Result extends Object>({
    @required Result authorized(UserInfo userInfo),
    @required Result unauthorized(),
  }) {
    assert(authorized != null);
    assert(unauthorized != null);
    return unauthorized();
  }

  @override
  @optionalTypeArgs
  Result maybeWhen<Result extends Object>({
    Result authorized(UserInfo userInfo),
    Result unauthorized(),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  Result map<Result extends Object>({
    @required Result authorized(AuthStateuthorized value),
    @required Result unauthorized(AuthStateUnAuthorized value),
  }) {
    assert(authorized != null);
    assert(unauthorized != null);
    return unauthorized(this);
  }

  @override
  @optionalTypeArgs
  Result maybeMap<Result extends Object>({
    Result authorized(AuthStateuthorized value),
    Result unauthorized(AuthStateUnAuthorized value),
    @required Result orElse(),
  }) {
    assert(orElse != null);
    if (unauthorized != null) {
      return unauthorized(this);
    }
    return orElse();
  }
}

abstract class AuthStateUnAuthorized implements AuthState {
  const factory AuthStateUnAuthorized() = _$AuthStateUnAuthorized;
}
