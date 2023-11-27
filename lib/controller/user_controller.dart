
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserController{
  static User? user = FirebaseAuth.instance.currentUser;

  //Getting user credentials and signing them in
  static  Future<User?> loginWithGoogle() async{
    final googleAccount = await GoogleSignIn().signIn();
    final googleAuth = await googleAccount?.authentication;
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );
    final userCredential = await FirebaseAuth.instance.signInWithCredential(credential,);
    return userCredential.user;
  }
  //logout user
 static Future<void> Logout() async{
    await FirebaseAuth.instance.signOut();
    await GoogleSignIn().signOut();
  }
}