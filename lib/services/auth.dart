import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

// sing in anonymous
  Future signInAnon() async {
    try {
      UserCredential results = await _auth.signInAnonymously();
      User? user = results.user;
      return user;
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
// sing in with email & password

// register in with email & password

// sign out

}
