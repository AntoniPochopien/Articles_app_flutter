import 'package:articles_app_flutter/domain/user.dart';

abstract class ILocalStorageRepository {
  Future<void> init();
  User? readUser();
  void updateUser(User? user);
}
