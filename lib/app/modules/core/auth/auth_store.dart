import 'package:gradient_text/app/models/user.dart';
import 'package:mobx/mobx.dart';
part 'auth_store.g.dart';

class AuthStore = AuthStoreBase with _$AuthStore;

abstract class AuthStoreBase with Store {
  @readonly
  User? _userLogged;

  @action
  Future<void> loadUserLogged() async {
    _userLogged = User.empty();
  }
}
