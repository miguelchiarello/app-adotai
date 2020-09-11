import 'package:firebase_auth/firebase_auth.dart';

class PasswordRepository {
  final FirebaseAuth _firebaseAuth = FirebaseAuth.instance;

  Future<void> sendPasswordResetEmail({String email}) async {
    await _firebaseAuth.sendPasswordResetEmail(email: email);
  }
}
