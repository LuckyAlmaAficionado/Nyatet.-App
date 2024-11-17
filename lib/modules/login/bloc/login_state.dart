part of 'login_bloc.dart';

@freezed
class LoginState with _$LoginState {
  const factory LoginState.initial() = _Initial;

  const factory LoginState.error({
    required String message,
  }) = _Error;
  const factory LoginState.success({
    required LoginResponseModel data, 
  }) = _Success;
}
