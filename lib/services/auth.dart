import 'package:firebase_auth/firebase_auth.dart';
import 'package:specialite/models/user.dart';

class AuthService {
  final FirebaseAuth _auth = FirebaseAuth.instance;

  User _createUser(FirebaseUser user) {
    return user != null ? User(uid: user.uid) : null;
  }

//auth change user stream
  Stream<User> get user {
    return _auth.onAuthStateChanged.map(_createUser);
    //.map((FirebaseUser user) => _createUser(user));
    //both maps do same stuff
  }

//sign in with email & pass

  Future signInEmail() async {
    try {
      AuthResult result = await _auth.signInAnonymously();
      FirebaseUser user = result.user;
      print(user.uid);
      return _createUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
  }


//sign up with email ans pass
Future signUpEmail(String email, String password) async {
  try {
      AuthResult result = await _auth.createUserWithEmailAndPassword(email: email, password: password );
      FirebaseUser user = result.user;
      print(user.uid);
      return _createUser(user);
    } catch (e) {
      print(e.toString());
      return null;
    }
}

//sign out

  Future signOut() async {
    try {
      return await _auth.signOut();
    } catch (e) {
      print("Sign Out Error: "+e.toString());
    }
  }
}
