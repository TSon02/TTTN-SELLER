import 'dart:developer' as dev;
import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'package:trendy_treasures_seller/get_it.dart';
import 'package:trendy_treasures_seller/models/user/request/login_request.dart';
import 'package:trendy_treasures_seller/models/user/request/register_request.dart';
import 'package:trendy_treasures_seller/providers/user_provider.dart';
import 'package:trendy_treasures_seller/repositories/data_repositories.dart';
import 'package:trendy_treasures_seller/utils/ui_helpers.dart';

part 'register_cubit.freezed.dart';
part 'register_state.dart';

class RegisterCubit extends Cubit<RegisterState> {
  final _dataRepository = getIt<DataRepository>();

  RegisterCubit()
      : super(const RegisterState.initial(data: RegisterStateData()));

  Future<void> register({
    required String username,
    required String email,
    required String password,
    required String confirmPassword,
    required String type,
    required BuildContext context,
  }) async {
    try {
      dev.log(username);
      dev.log(email);
      dev.log(password);
      dev.log(confirmPassword);
      dev.log(type);
      dev.log(state.data!.error);
      UIHelpers.showLoading();
      final random = Random().nextInt(1000);
      if (username.trim().isEmpty) {
        dev.log('username is empty.........');
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Username is empty ,$random')));
      } else if (email.trim().isEmpty) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Email is empty ,$random')));
      } else if (username.trim().length < 9) {
        emit(RegisterState.getError(
            data: state.data!
                .copyWith(error: 'Username length greater than 9 ,$random')));
      } else if (RegExp(
                  r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
              .hasMatch(email) ==
          false) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Email is invalid ,$random')));
      } else if (password.trim().isEmpty) {
        emit(RegisterState.getError(
            data: state.data!.copyWith(error: 'Password is empty ,$random')));
      } else if (confirmPassword.trim().isEmpty) {
        emit(RegisterState.getError(
            data: state.data!
                .copyWith(error: 'Confirm Password is empty ,$random')));
      } else if (password.trim().length < 6) {
        emit(RegisterState.getError(
            data: state.data!
                .copyWith(error: 'Password length greater than 6 ,$random')));
      } else if (password.trim() != confirmPassword.trim()) {
        emit(RegisterState.getError(
            data: state.data!
                .copyWith(error: 'Password does not match ,$random')));
      } else {
        final request = RegisterRequest(
            username: username, password: password, email: email, type: type);
        SharedPreferences prefs = await SharedPreferences.getInstance();

        dev.log(request.toRawJson());
        final response = await _dataRepository.signUp(request: request);
        dev.log(response.toRawJson());
        if (response.success == true) {
          final loginRequest = LoginRequest(email: email, password: password);

          final loginResponse =
              await _dataRepository.signIn(request: loginRequest);

          if (loginResponse.success == true) {
            // ignore: use_build_context_synchronously
            Provider.of<UserProvider>(context, listen: false).setUser(
                user: loginResponse.user!
                    .copyWith(token: loginResponse.token)
                    .toJson());

            // save token
            await prefs.setString('x-auth-token', loginResponse.token!);
          }

          emit(RegisterState.getError(
              data: state.data!.copyWith(error: "Success ,$random")));
        } else {
          emit(RegisterState.getError(
              data:
                  state.data!.copyWith(error: '${response.message} ,$random')));
        }
      }
    } catch (e) {
      debugPrint('Register Error: $e');
    } finally {
      UIHelpers.dismissLoading();
    }
  }

  void changeRole({required bool value}) {
    emit(RegisterState.createAdmin(
        data: state.data!.copyWith(createAdmin: value)));
  }
}
