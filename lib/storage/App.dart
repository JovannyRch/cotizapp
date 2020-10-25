import 'package:cotizapp/models/usuario_model.dart';
import 'package:cotizapp/shared/user_preferences.dart';
import 'package:flutter/foundation.dart';

class AppState with ChangeNotifier {
  Usuario _usuario = Usuario();

  UserPreferences _userPreferences = UserPreferences();

  AppState() {
    init();
  }

  Usuario get usuario => this._usuario;

  set usuario(val) {
    this._usuario = val;
    notifyListeners();
  }

  void init() async {
    usuario = new Usuario(id: _userPreferences.email);
  }
}
