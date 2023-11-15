part of 'login_cubit.dart';

@freezed
class LoginStateData with _$LoginStateData {
  const factory LoginStateData({
    @Default('') String error,
    LoginResponse? response,
  }) = _LoginStateData;
}

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial({LoginStateData? data}) = Initial;
  const factory LoginState.getError({LoginStateData? data}) = GetError;
}
