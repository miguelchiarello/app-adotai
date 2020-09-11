// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'signin_controller.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$SigninController on _SigninControllerBase, Store {
  final _$emailAtom = Atom(name: '_SigninControllerBase.email');

  @override
  String get email {
    _$emailAtom.reportRead();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.reportWrite(value, super.email, () {
      super.email = value;
    });
  }

  final _$passwordAtom = Atom(name: '_SigninControllerBase.password');

  @override
  String get password {
    _$passwordAtom.reportRead();
    return super.password;
  }

  @override
  set password(String value) {
    _$passwordAtom.reportWrite(value, super.password, () {
      super.password = value;
    });
  }

  final _$loginAsyncAction = AsyncAction('_SigninControllerBase.login');

  @override
  Future<dynamic> login() {
    return _$loginAsyncAction.run(() => super.login());
  }

  final _$logoutAsyncAction = AsyncAction('_SigninControllerBase.logout');

  @override
  Future<dynamic> logout() {
    return _$logoutAsyncAction.run(() => super.logout());
  }

  final _$getCurrentUserAsyncAction =
      AsyncAction('_SigninControllerBase.getCurrentUser');

  @override
  Future<bool> getCurrentUser() {
    return _$getCurrentUserAsyncAction.run(() => super.getCurrentUser());
  }

  final _$_SigninControllerBaseActionController =
      ActionController(name: '_SigninControllerBase');

  @override
  void setEmail(dynamic value) {
    final _$actionInfo = _$_SigninControllerBaseActionController.startAction(
        name: '_SigninControllerBase.setEmail');
    try {
      return super.setEmail(value);
    } finally {
      _$_SigninControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  void setPassword(dynamic value) {
    final _$actionInfo = _$_SigninControllerBaseActionController.startAction(
        name: '_SigninControllerBase.setPassword');
    try {
      return super.setPassword(value);
    } finally {
      _$_SigninControllerBaseActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
email: ${email},
password: ${password}
    ''';
  }
}
