import 'package:articles_app_flutter/domain/user.dart';

class AuthenticatedUser {
  User? user;
  AuthenticatedUser(this.user);

  void updateUser(User newUser) => user = newUser;
}
