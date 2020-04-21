import 'package:firebase_auth/firebase_auth.dart';

class FireBaseOps {
  //final GoogleSignIn _googleSignIn = GoogleSignIn();
  final FirebaseAuth _auth = FirebaseAuth.instance;

  validateUserExists() {}

  Future createUser(String email, String password) async {
    try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(
          email: email, password: password);
      FirebaseUser user = result.user;
      return user != null ? user.uid : null;
    } catch (e) {
      print(e.toString());
      return e;
    }
  }

  validateUserPassword() {}
}
