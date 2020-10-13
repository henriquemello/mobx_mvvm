class UserModel {
  String nome;
  String email;
  String perfil;
  String foto;
  String token;

  UserModel({this.nome, this.email, this.perfil, this.foto, this.token});

  UserModel.fromJson(Map<String, dynamic> json) {
    nome = json['nome'];
    email = json['email'];
    perfil = json['perfil'];
    foto = json['foto'];
    token = json['token'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['nome'] = this.nome;
    data['email'] = this.email;
    data['perfil'] = this.perfil;
    data['foto'] = this.foto;
    data['token'] = this.token;
    return data;
  }
}
