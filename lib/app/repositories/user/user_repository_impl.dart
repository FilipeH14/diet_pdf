import 'package:diet_pdf/app/exception/auth_exception.dart';
import 'package:diet_pdf/app/repositories/user/user_repository.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

class UserRepositoryImpl implements UserRepository {
  FirebaseAuth _firebaseAuth;

  UserRepositoryImpl({required FirebaseAuth firebaseAuth})
      : _firebaseAuth = firebaseAuth;

  @override
  Future<User?> googleLogin() async {
    List<String>? loginMethods;

    try {
      final googleSignIn = GoogleSignIn();
      final googleUser = await googleSignIn.signIn();

      if (googleUser != null) {
        final googleAuth = await googleUser.authentication;
        final firebaseCredential = GoogleAuthProvider.credential(
          accessToken: googleAuth.accessToken,
          idToken: googleAuth.idToken,
        );

        var userCredential =
            await _firebaseAuth.signInWithCredential(firebaseCredential);

        return userCredential.user;
      }
    } on FirebaseAuthException catch (e, s) {
      print(e);
      print(s);

      if (e.code == 'account-exists-with-different-credencial') {
        throw AuthException(message: '''
        Login inválido, você se registrou no app com os seguintes provedores:
        ${loginMethods!.join(',')}
        ''');
      } else {
        throw AuthException(message: 'Erro ao realizar login');
      }
    }
  }
}
