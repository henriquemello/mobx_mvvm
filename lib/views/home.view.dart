import 'package:flutter/material.dart';
import 'package:mvc_mvvm_mobx/stores/app.store.dart';
import 'package:provider/provider.dart';

class HomeView extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final store = Provider.of<AppStore>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text("Tela inicial"),
      ),
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              Text("Logado!!"),
              Text(store.email),
            ],
          ),
        ),
      ),
    );
  }
}
