import 'package:bloc_network_example/models/user.dart';
import 'package:bloc_network_example/services/user_api_provider.dart';

class UsersRepository {
  UserProvider _usersProvider = UserProvider();
  Future<List<Data>> getAllUsers() => _usersProvider.getUser();
}
