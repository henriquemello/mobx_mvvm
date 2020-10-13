import 'package:flutter/material.dart';
import 'package:mvc_mvvm_mobx/controllers/userController.dart';
import 'package:mvc_mvvm_mobx/stores/app.store.dart';
import 'package:mvc_mvvm_mobx/view-model/userViewModel.dart';
import 'package:mvc_mvvm_mobx/views/home.view.dart';
import 'package:provider/provider.dart';

class SignupView extends StatefulWidget {
  @override
  _SignupViewState createState() => _SignupViewState();
}

class _SignupViewState extends State<SignupView> {
  final _formKey = GlobalKey<FormState>();
  final model = UserViewModel();
  final controller = UserController();

  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    return Scaffold(
        body: SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.all(40),
        child: Form(
          key: _formKey,
          child: Column(
            children: [
              Text(
                "Cadastre-se",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              TextFormField(
                  decoration: InputDecoration(labelText: "Nome"),
                  validator: (value) {
                    if (value.isEmpty) return "Nome obrigatório";
                    return null;
                  },
                  onSaved: (valor) {
                    model.nome = valor;
                  }),
              TextFormField(
                  decoration: InputDecoration(labelText: "Email"),
                  validator: (value) {
                    if (value.isEmpty) return "Email obrigatório";
                    return null;
                  },
                  onSaved: (valor) {
                    model.email = valor;
                  }),
              TextFormField(
                  decoration: InputDecoration(
                    labelText: "Senha",
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value.isEmpty) return "Senha obrigatória";
                    return null;
                  },
                  onSaved: (valor) {
                    model.senha = valor;
                  }),
              SizedBox(height: 50),
              model.isOcupado
                  ? CircularProgressIndicator(
                      backgroundColor: Colors.white,
                    )
                  : FlatButton(
                      color: Theme.of(context).primaryColor,
                      child: Text("Cadastrar"),
                      textColor: Colors.white,
                      onPressed: () {
                        if (_formKey.currentState.validate()) {
                          _formKey.currentState.save();

                          setState(() {});
                          controller.signup(model).then((userModel) {
                            store.setUser(userModel.nome, userModel.email, userModel.foto, userModel.token);
                            Navigator.push(context, MaterialPageRoute(builder: (context) => HomeView()));
                            setState(() {});
                          });
                        }
                      },
                    ),
            ],
          ),
        ),
      ),
    ));
  }
}
