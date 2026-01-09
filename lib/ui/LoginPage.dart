import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_deer/style/text_style.dart';
import 'package:project_deer/ui/viewmodel/LoginViewModel.dart';
import 'package:project_deer/ui/widget/input_text.dart';

class LoginPage extends ConsumerWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final viewModel = ref.read(loginViewModel.notifier);
    final isLoginEnable = ref.watch(
      loginViewModel.select((state) => state.isLoginEnable),
    );
    var usernameController = ref.watch(usernameControllerProvider);
    usernameController.addListener(() {
      viewModel.updateUserName(usernameController.text);
    });

    return Scaffold(
      appBar: AppBar(
        actions: [
          Container(
            padding: EdgeInsets.all(8),
            color: Colors.white,
            child: Text("验证码登录", style: bodyTextMedium),
          ),
        ],
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("密码登录", style: titleTextLarge),
            AccountText(controller: usernameController),
            PasswordText(),
          ],
        ),
      ),
    );
  }
}
