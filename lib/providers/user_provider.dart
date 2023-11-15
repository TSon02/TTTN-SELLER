import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:trendy_treasures_seller/get_it.dart';
import 'package:trendy_treasures_seller/models/user/response/user_response.dart';
import 'package:trendy_treasures_seller/repositories/data_repositories.dart';

class UserProvider extends ChangeNotifier {
  User _user = User(
    email: '',
    id: '',
    username: '',
    password: '',
    address: '',
    type: '',
    token: '',
  );

  User get user => _user;

  void setUser({required Map<String, dynamic> user}) {
    _user = User.fromJson(user);
    notifyListeners();
  }

  Future<void> getUserData(BuildContext context) async {
    final dataRepository = getIt<DataRepository>();
    SharedPreferences prefs = await SharedPreferences.getInstance();

    String? token = prefs.getString('x-auth-token');

    log((token == null).toString());

    if (token == null) {
      prefs.setString('x-auth-token', '');
    }

    log(token.toString());

    final tokenRes = await dataRepository.checkToken(token: token!);

    log('tokenRes.toString()');
    log(tokenRes.toString());

    if (tokenRes == true) {
      final response = await dataRepository.getUser(token: token);

      // ignore: unused_local_variable, use_build_context_synchronously
      final userProvider = setUser(
          user: response.user!.copyWith(token: response.token).toJson());
      log(response.toRawJson());
    }
  }
}
