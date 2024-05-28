// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'LoginStore.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$LoginStore on _LoginStore, Store {
  late final _$isLoadingAtom =
      Atom(name: '_LoginStore.isLoading', context: context);

  @override
  bool get isLoading {
    _$isLoadingAtom.reportRead();
    return super.isLoading;
  }

  @override
  set isLoading(bool value) {
    _$isLoadingAtom.reportWrite(value, super.isLoading, () {
      super.isLoading = value;
    });
  }

  late final _$formAtom = Atom(name: '_LoginStore.form', context: context);

  @override
  LoginForm get form {
    _$formAtom.reportRead();
    return super.form;
  }

  @override
  set form(LoginForm value) {
    _$formAtom.reportWrite(value, super.form, () {
      super.form = value;
    });
  }

  late final _$_LoginStoreActionController =
      ActionController(name: '_LoginStore', context: context);

  @override
  void toggleLoading() {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.toggleLoading');
    try {
      return super.toggleLoading();
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setEmail(String data) {
    final _$actionInfo =
        _$_LoginStoreActionController.startAction(name: '_LoginStore.setEmail');
    try {
      return super.setEmail(data);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(String data) {
    final _$actionInfo = _$_LoginStoreActionController.startAction(
        name: '_LoginStore.setPassword');
    try {
      return super.setPassword(data);
    } finally {
      _$_LoginStoreActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
isLoading: ${isLoading},
form: ${form}
    ''';
  }
}
