import 'dart:io';

import 'package:flutter/services.dart';

final firebaseErrors = {
  "ERROR_INVALID_EMAIL": "Email inválido",
  "ERROR_USER_NOT_FOUND": "Usuário não cadastrado",
  "ERROR_WRONG_PASSWORD": "Senha inválida",
  "ERROR_USER_DISABLED": "O usuário com este email foi desativado.",
  "ERROR_TOO_MANY_REQUESTS": "Muitos pedidos. Tente mais tarde.",
  "ERROR_OPERATION_NOT_ALLOWED": "O login com email e senha não está ativado.",
};

class FirebaseIntercept {
  static Future intercept(Function request) async {
    try {
      return await request();
    } on PlatformException catch (e) {
      if (firebaseErrors.containsKey(e.code)) {
        return Future.error(firebaseErrors[e.code]);
      } else {
        print(e.code);
        return Future.error('Ocorreu um erro indefinido.');
      }
    } on SocketException {
      return Future.error(
          'Problemas com a internet, tente novamente mais tarde.');
    } on Exception catch (e) {
      return Future.error(e);
    }
  }
}
