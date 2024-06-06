import 'dart:convert';

import 'package:kantungku/helpers/api_instance.dart';
import 'package:kantungku/helpers/encrypted_storage.dart';
import 'package:kantungku/models/login.dart';
import 'package:kantungku/stores/login_store.dart';

void login(LoginStore store) async {
  store.toggleLoading(); //true
  final response = await api.post('/auth/login', data: jsonEncode(store.form));
  storage.write(key: 'access_token', value: response.data.access_token);
  storage.write(key: 'refresh_token', value: response.data.refresh);
  store.toggleLoading(); //false
}
