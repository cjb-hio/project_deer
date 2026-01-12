import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod/legacy.dart';
import 'package:project_deer/ui/state/LoginPageState.dart';

class LoginViewModel extends StateNotifier<LoginPageState> {
  LoginViewModel() : super(LoginPageState());

  void updateUserName(String text) {
    state = state.copyWith(name: text);
    _checkLoginEnable();
  }

  void updatePassword(String text) {
    state = state.copyWith(password: text);
    _checkLoginEnable();
  }

  void _checkLoginEnable() {
    state = state.copyWith(
      isLoginEnable: state.name.length >= 11 && state.password.length >= 6,
    );
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

final passwordControllerProvider = Provider.autoDispose<TextEditingController>(
  (ref) => TextEditingController(),
);
