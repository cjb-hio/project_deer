import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:project_deer/ui/state/LoginPageState.dart';

class LoginViewModel extends StateNotifier<LoginPageState> {
  LoginViewModel() : super(LoginPageState());

  void updateUserName(String text) {
    state = state.copyWith(name: text);

  }

  void updatePassword(String text) {
    state = state.copyWith(password: text);
  }
}

final loginViewModel = StateNotifierProvider<LoginViewModel, LoginPageState>((
  ref,
) {
  return LoginViewModel();
});

final usernameControllerProvider = Provider.autoDispose<TextEditingController>(
  (ref) => TextEditingController(),
);
