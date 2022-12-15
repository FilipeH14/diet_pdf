import 'package:diet_pdf/app/repositories/user/user_repository.dart';
import 'package:diet_pdf/app/services/user/user_service.dart';
import 'package:firebase_auth/firebase_auth.dart';

class UserServiceImpl implements UserService {
  final UserRepository _userRepository;

  UserServiceImpl({required UserRepository userRepository})
      : _userRepository = userRepository;

  @override
  Future<User?> googleLogin() => _userRepository.googleLogin();
}
