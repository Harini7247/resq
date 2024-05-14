import 'package:resq/repository/authentication_repository/exceptions/signup_with_email_and_password_exception.dart';
import 'package:get/get.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:resq/src/features/authentication/screens/home/home.dart';
import 'package:resq/src/features/authentication/screens/register/register.dart';
import 'package:resq/src/features/authentication/screens/splash_screen/splash_screen.dart';

class AuthenticationRepository extends GetxController {
  static AuthenticationRepository get instance => Get.find();
  final _auth=FirebaseAuth.instance;
  late final Rx<User?> firebaseUser;

  void onReady(){
    firebaseUser=Rx<User?>(_auth.currentUser);
    firebaseUser.bindStream(_auth.userChanges());
    ever(firebaseUser,_setInitialScreen);
  }

  _setInitialScreen(User? user) {
    user==null ? Get.offAll(()=>SplashScreen()) : Get.offAll(()=>const Home());
  }

  Future<void> createUserWithEmailAndPassword(String email,String password) async{
    try{
      await _auth.createUserWithEmailAndPassword(email: email, password: password);
      firebaseUser.value!=null ? Get.offAll(()=>const register()) : Get.offAll(()=>const Home());
    } on FirebaseAuthException catch(e){
    } catch(_){}
  }

  Future<void> loginUserWithEmailAndPassword(String email,String password) async{
    try{
      await _auth.signInWithEmailAndPassword(email: email, password: password);
      firebaseUser.value!=null ? Get.offAll(()=>const Home()) : Get.offAll(()=>const Home());
    } on FirebaseAuthException catch(e){
      final ex=signUpWithEmailAndPasswordFailure.code(e.code);
      print('FIREBASE AUTH EXCEPTION: ${ex.message}');
      throw ex;
    } catch(_){
      final ex=signUpWithEmailAndPasswordFailure();
      print('FIREBASE AUTH EXCEPTION: ${ex.message}');
      throw ex;
    }
  }

  Future<void> logout() async{
    await _auth.signOut();
  }

/* Future<UserCredential> signInWithGoogle() async {
    // Trigger the authentication flow
    final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();

    // Obtain the auth details from the request
    final GoogleSignInAuthentication? googleAuth = await googleUser?.authentication;

    // Create a new credential
    final credential = GoogleAuthProvider.credential(
      accessToken: googleAuth?.accessToken,
      idToken: googleAuth?.idToken,
    );

    // Once signed in, return the UserCredential
    return await FirebaseAuth.instance.signInWithCredential(credential);
  }*/
}