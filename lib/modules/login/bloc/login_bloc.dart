import 'dart:developer';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import 'package:frontend_nyatet_app_flutter/data/datasources/authentication_datasource.dart';
import 'package:frontend_nyatet_app_flutter/data/model/login_response_model.dart';

part 'login_event.dart';
part 'login_state.dart';
part 'login_bloc.freezed.dart';

class LoginBloc extends Bloc<LoginEvent, LoginState> {
  final AuthenticationDatasource authenticationDatasource;

  LoginBloc(this.authenticationDatasource) : super(const _Initial()) {
    on<_Login>((event, emit) async {
      emit(const _Initial());

      final response = await authenticationDatasource.login(
        username: event.username,
        password: event.password,
      );

      response.fold((l) => log(l), (r) => log(r.toJson()));

      return response.fold(
        (l) => emit(_Error(message: l)),
        (r) => emit(_Success(data: r)),
      );
    });
  }
}
