import 'dart:async';

import 'package:uuid/uuid.dart';

import 'models/models.dart';
/// The [UserRepository] will be responsible for the user domain
/// and will expose APIs to interact with the current user.
class UserRepository {
  User? _user;

  /// The [UserRepository] exposes a single method getUser
  /// which will retrieve the current user.
  Future<User?> getUser() async {
    if (_user != null) return _user;
    return Future.delayed(
      const Duration(milliseconds: 300),
          () => _user = User(const Uuid().v4()),
    );
  }
}
