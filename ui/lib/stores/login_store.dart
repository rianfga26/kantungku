import 'package:kantungku/models/login.dart';
import 'package:mobx/mobx.dart';

part 'LoginStore.g.dart';

class LoginStore = _LoginStore with _$LoginStore;

abstract class _LoginStore with Store {
  @observable
  bool isLoading = false;

  @observable
  LoginForm form = LoginForm(email: '', password: '');

  @action
  void toggleLoading() {
    isLoading = !isLoading;
  }

  @action
  void setEmail(String data) {
    form.email = data;
  }

  @action
  void setPassword(String data) {
    form.password = data;
  }
}
