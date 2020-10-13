// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'app.store.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic

mixin _$AppStore on _AppStore, Store {
  final _$nomeAtom = Atom(name: '_AppStore.nome');

  @override
  String get nome {
    _$nomeAtom.context.enforceReadPolicy(_$nomeAtom);
    _$nomeAtom.reportObserved();
    return super.nome;
  }

  @override
  set nome(String value) {
    _$nomeAtom.context.conditionallyRunInAction(() {
      super.nome = value;
      _$nomeAtom.reportChanged();
    }, _$nomeAtom, name: '${_$nomeAtom.name}_set');
  }

  final _$emailAtom = Atom(name: '_AppStore.email');

  @override
  String get email {
    _$emailAtom.context.enforceReadPolicy(_$emailAtom);
    _$emailAtom.reportObserved();
    return super.email;
  }

  @override
  set email(String value) {
    _$emailAtom.context.conditionallyRunInAction(() {
      super.email = value;
      _$emailAtom.reportChanged();
    }, _$emailAtom, name: '${_$emailAtom.name}_set');
  }

  final _$fotoAtom = Atom(name: '_AppStore.foto');

  @override
  String get foto {
    _$fotoAtom.context.enforceReadPolicy(_$fotoAtom);
    _$fotoAtom.reportObserved();
    return super.foto;
  }

  @override
  set foto(String value) {
    _$fotoAtom.context.conditionallyRunInAction(() {
      super.foto = value;
      _$fotoAtom.reportChanged();
    }, _$fotoAtom, name: '${_$fotoAtom.name}_set');
  }

  final _$tokenAtom = Atom(name: '_AppStore.token');

  @override
  String get token {
    _$tokenAtom.context.enforceReadPolicy(_$tokenAtom);
    _$tokenAtom.reportObserved();
    return super.token;
  }

  @override
  set token(String value) {
    _$tokenAtom.context.conditionallyRunInAction(() {
      super.token = value;
      _$tokenAtom.reportChanged();
    }, _$tokenAtom, name: '${_$tokenAtom.name}_set');
  }

  final _$_AppStoreActionController = ActionController(name: '_AppStore');

  @override
  void setUser(String pNome, String pEmail, String pFoto, String pToken) {
    final _$actionInfo = _$_AppStoreActionController.startAction();
    try {
      return super.setUser(pNome, pEmail, pFoto, pToken);
    } finally {
      _$_AppStoreActionController.endAction(_$actionInfo);
    }
  }
}
