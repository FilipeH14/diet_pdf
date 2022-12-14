import 'package:firebase_auth/firebase_auth.dart';

abstract class UserReopository {
  Future<User?> googleLogin(); 
}
