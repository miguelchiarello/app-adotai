import 'package:adotai/modules/signup/signup_repository.dart';
import 'package:adotai/shared/helpers/firebase_intercept.dart';
import 'package:mobx/mobx.dart';

part 'signup_controller.g.dart';

class SignupController = _SignupControllerBase with _$SignupController;

abstract class _SignupControllerBase with Store {
  SignupRepository _repository;

  _SignupControllerBase() {
    _repository = SignupRepository();
  }

  @observable
  String email;

  @action
  void setEmail(value) => email = value;

  @observable
  String password;

  @action
  void setPassword(value) => password = value;

  @action
  Future createUser() async {
    return await FirebaseIntercept.intercept(() async {
      await _repository.createUserWithEmailAndPassword(
          email: email, password: password);
    });
  }
}
