import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:kantungku/helpers/api_instance.dart';
import 'package:kantungku/helpers/encrypted_storage.dart';
import 'package:kantungku/stores/login_store.dart';
import 'package:kantungku/stores/register_store.dart';

void login(BuildContext context, LoginStore store) async {
  store.toggleLoading();

  try {
    final response =
        await api.post('/auth/login', data: jsonEncode(store.form));

    if (response.statusCode == 200) {
      // ignore: avoid_print
      print(response.statusCode);
      context.goNamed('home');
    }
  } on DioException catch (e) {
    // ignore: avoid_print
    // print(jsonEncode(store.form));
    // ignore: avoid_print
    print(e.response?.statusCode);
    context.goNamed('login');
  }
  //true

  // ignore: avoid_print
  // print(response.statusCode);

  // storage.write(key: 'access_token', value: response.data.access_token);
  // storage.write(key: 'refresh_token', value: response.data.refresh);
  store.toggleLoading(); //false
}

void register(BuildContext context, RegisterStore store) async {
  store.toggleIsLoading();

  if (store.register.password == cPassword) {
    try {
      final response =
          await api.post('/users', data: jsonEncode(store.register));
      // ignore: avoid_print
      // print(response.statusCode);
      if (response.statusCode == 204) {
        context.goNamed('login');
      }
    } on DioException catch (e) {
      // ignore: avoid_print
      print(e.response);
    }
  } else {
    // ignore: avoid_print
    print("password tidak sama");
  }

  store.toggleIsLoading();
}

String? cPassword;

void setCpassword(String pw) {
  cPassword = pw;
}
