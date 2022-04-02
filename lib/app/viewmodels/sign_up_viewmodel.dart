import 'package:profile/app/interfaces/user_repository_interface.dart';
import 'package:profile/app/models/user_model.dart';

class SignUpViewModel {
  final IUserRepository repository;

  SignUpViewModel(this.repository);

  signUp(String name, String email, String password) async {
    try {
      UserModel userModel =
          UserModel(name: name, email: email, password: password);
      repository.post(userModel);
      return userModel;
    } catch (e) {
      return e;
    }
  }
}
