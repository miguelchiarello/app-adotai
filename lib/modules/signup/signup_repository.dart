import 'package:firebase_auth/firebase_auth.dart';

class SignupRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<FirebaseUser> createUserWithEmailAndPassword(
      {String email, String password}) async {
    final auth = await _firebaseAuth.createUserWithEmailAndPassword(
        email: email, password: password);
    return auth.user;
  }
}
