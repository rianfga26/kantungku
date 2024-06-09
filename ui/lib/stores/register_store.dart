import 'package:kantungku/models/register.dart';
import 'package:mobx/mobx.dart';

part 'register_store.g.dart';

class RegisterStore = _RegisterStore with _$RegisterStore;

abstract class _RegisterStore with Store {
  @observable
  bool isLoading = false;

  @observable
  Register register = Register(first_name: '', email: '', password: '');

  @action
  void toggleIsLoading() {
    isLoading = !isLoading;
  }

  @action
  void setName(String name) {
    register.first_name = name;
  }

  @action
  void setEmail(String email) {
    register.email = email;
  }

  @action
  void setPassword(String password) {
    register.password = password;
  }
 
}
