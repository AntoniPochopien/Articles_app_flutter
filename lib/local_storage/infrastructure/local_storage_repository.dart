import 'package:articles_app_flutter/domain/user.dart';
import 'package:articles_app_flutter/local_storage/domain/i_local_storage_repository.dart';
import 'package:hive_flutter/adapters.dart';

class LocalStorageRepository implements ILocalStorageRepository {
  late final Box box;

  @override
  Future<void> init() async {
    await Hive.initFlutter();
    Hive.registerAdapter(UserAdapter());
    box = await Hive.openBox('ArticlesBox');
  }

  @override
  User? readUser() => box.get('user');

  @override
  void updateUser(User? user) => box.put('user', user);
}
