import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:savollar/cubit/sign_in_cubit/sign_in_states.dart';

class SignInCubit extends Cubit<SignInState> {
  SignInCubit(SignInState initialState) : super(initialState);

  final TextEditingController usernameController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  bool isSignedIn() {
    if (usernameController.text == "ogabek" &&
        passwordController.text == "12345678") {
      return true;
    }
    return false;
  }
}
