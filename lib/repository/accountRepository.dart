import 'package:mvc_mvvm_mobx/models/userModel.dart';
import 'package:mvc_mvvm_mobx/view-model/userViewModel.dart';
import 'package:uuid/uuid.dart';

class AccountRespository {
  Future<UserModel> signup(UserViewModel model) async {
    await Future.delayed(Duration(seconds: 2));

    return UserModel(
      nome: "Henrique Mello",
      email: "henrique.mello@gmail.com",
      foto: "https://picsum.photos/200/300",
      perfil: "Admin",
      token: Uuid().v4()
    );
  }
}
