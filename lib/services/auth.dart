import 'package:brew_coffee/models/users.dart';
import 'package:firebase_auth/firebase_auth.dart';

class AuthServices {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  //create user object on firebaseUser
  Users? _userFromFirebaseUser(User user){
    return user != null? Users(uid: user.uid): null;
  }
  

// sing in anonymous
  Future signInAnon() async {
    try {
      UserCredential results = await _auth.signInAnonymously();
      User? user = results.user;
      return _userFromFirebaseUser(user!);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }
// sing in with email & password

// register in with email & password

// sign out

}
