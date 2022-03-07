import 'package:firebase_auth/firebase_auth.dart';

class UserRepository {
  Future<User?> getCurrentUser() async {
    return FirebaseAuth.instance.currentUser;
  }
}
