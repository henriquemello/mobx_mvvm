import 'package:mvc_mvvm_mobx/models/userModel.dart';
import 'package:mvc_mvvm_mobx/repository/accountRepository.dart';
import 'package:mvc_mvvm_mobx/view-model/userViewModel.dart';

class UserController {
  AccountRespository accountRepository;

  UserController() {
    accountRepository = AccountRespository();
  }

  Future<UserModel> signup(UserViewModel model) async {
    model.isOcupado = true;
    UserModel userModel = await accountRepository.signup(model);
    model.isOcupado = false;
    return userModel;
  }
}
