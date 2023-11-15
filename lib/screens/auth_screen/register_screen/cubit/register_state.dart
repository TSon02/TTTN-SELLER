part of 'register_cubit.dart';

@freezed
class RegisterStateData with _$RegisterStateData {
  const factory RegisterStateData({
    @Default('') String error,
    @Default(false) bool createAdmin,
    @Default(false) bool rules,
  }) = _RegisterStateData;
}

@freezed
class RegisterState with _$RegisterState {
  const factory RegisterState.initial({RegisterStateData? data}) = Initial;
  const factory RegisterState.getError({RegisterStateData? data}) = GetError;
  const factory RegisterState.createAdmin({RegisterStateData? data}) =
      CreateAdmin;
  const factory RegisterState.rules({RegisterStateData? data}) = Rules;
}
