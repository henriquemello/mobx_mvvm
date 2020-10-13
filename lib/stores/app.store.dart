import 'package:mobx/mobx.dart';
part 'app.store.g.dart';

class AppStore = _AppStore with _$AppStore;

abstract class _AppStore with Store {
  @observable
  String nome;

  @observable
  String email;

  @observable
  String foto;

  @observable
  String token;

  @action
  void setUser(String pNome, String pEmail, String pFoto, String pToken) {
    nome = pNome;
    email = pEmail;
    foto = pFoto;
    token = pToken;
  }
}
