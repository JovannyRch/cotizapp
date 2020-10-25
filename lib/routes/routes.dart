import 'package:cotizapp/screens/home_screen.dart';
import 'package:cotizapp/screens/login_screen.dart';
import 'package:cotizapp/screens/register_screen.dart';
import 'package:cotizapp/screens/reset_password_screen.dart';
import 'package:flutter/material.dart';

const home = "/";
const login = "login";
const register = "register";
const resetPassword = "resetPassword";

final routes = {
  home: (BuildContext context) => HomeScreen(),
  login: (BuildContext context) => LoginScreen(),
  register: (BuildContext context) => RegisterScreen(),
  resetPassword: (BuildContext context) => ResetPasswordScreen(),
};
