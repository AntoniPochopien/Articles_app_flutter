import 'package:hive/hive.dart';

part 'user.g.dart';

@HiveType(typeId: 0)
class User {
  @HiveField(0)
  final String username;
  @HiveField(1)
  final String accessToken;

  const User({required this.username, required this.accessToken});

  //Unauthenticated user
  factory User.none() => const User(username: '', accessToken: '');

  factory User.fromJson(Map<String, dynamic> json) =>
      User(username: json['username'], accessToken: json['accessToken']);
}
