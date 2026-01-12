class LoginPageState {
  final String name;
  final String password;
  final bool isLoginEnable;

  LoginPageState({
    this.name = "",
    this.password = "",
    this.isLoginEnable = false,
  });

  LoginPageState copyWith({
    String? name,
    String? password,
    bool? isLoginEnable,
  }) {
    return LoginPageState(
      name: name ?? this.name,
      isLoginEnable: isLoginEnable ?? this.isLoginEnable,
      password: password ?? this.password,
    );
  }
}
