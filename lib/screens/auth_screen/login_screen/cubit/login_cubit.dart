import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:trendy_treasures_seller/get_it.dart';
import 'package:trendy_treasures_seller/models/user/request/login_request.dart';
import 'package:trendy_treasures_seller/models/user/response/login_response.dart';
import 'package:trendy_treasures_seller/providers/user_provider.dart';
import 'package:trendy_treasures_seller/repositories/data_repositories.dart';
import 'package:trendy_treasures_seller/utils/ui_helpers.dart';

part 'login_cubit.freezed.dart';
part 'login_state.dart';

class LoginCubit extends Cubit<LoginState> {
  final _dataRepository = getIt<DataRepository>();

  LoginCubit() : super(const LoginState.initial(data: LoginStateData()));

  Future<void> login(
      {required String email,
      required String password,
      required BuildContext context}) async {
    try {
      final random = Random().nextInt(1000);

      UIHelpers.showLoading();
      if (email.trim().isEmpty) {
        emit(LoginState.getError(
            data: state.data!.copyWith(error: 'Email is empty ,$random')));
      } else if (RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(email) ==
          false) {
        emit(LoginState.getError(
            data: state.data!.copyWith(error: 'Email is invalid ,$random')));
      } else if (password.trim().isEmpty) {
        emit(LoginState.getError(
            data: state.data!.copyWith(error: 'Password is empty ,$random')));
      } else {
        final request = LoginRequest(email: email, password: password);

        final response = await _dataRepository.signIn(request: request);

        if (response.success == false) {
          emit(LoginState.getError(
              data: state.data!
                  .copyWith(error: '${response.message!} ,$random')));
        } else {
          emit(LoginState.getError(
              data: state.data!.copyWith(error: 'Success ,$random')));

          SharedPreferences prefs = await SharedPreferences.getInstance();

          // Provider.of<UserProvider>(context, listen: false).setUser(user: {
          //   "email": response.user!.email,
          //   "id": response.user!.id,
          //   "username": response.user!.username,
          //   "password": response.user!.password,
          //   "address": response.user!.address,
          //   "type": response.user!.type,
          //   "token": response.token,
          // });

          // ignore: use_build_context_synchronously
          Provider.of<UserProvider>(context, listen: false).setUser(
              user: response.user!.copyWith(token: response.token).toJson());

          // save token
          await prefs.setString('x-auth-token', response.token!);
        }

        dev.log(response.toRawJson());
      }
    } catch (e) {
      dev.log(e.toString());
    } finally {
      UIHelpers.dismissLoading();
    }
  }
}
