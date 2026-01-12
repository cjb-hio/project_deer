import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_deer/style/button_style.dart';
import 'package:project_deer/style/text_style.dart';
import 'package:project_deer/ui/viewmodel/LoginViewModel.dart';
import 'package:project_deer/ui/widget/input_text.dart';
import 'package:project_deer/util/log_utils.dart';

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

    var passwordController = ref.watch(passwordControllerProvider);
    passwordController.addListener(() {
      viewModel.updatePassword(passwordController.text);
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
            SizedBox(height: 16),
            AccountText(controller: usernameController),
            SizedBox(height: 8),
            PasswordText(controller: passwordController),
            SizedBox(height: 24),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: isLoginEnable
                    ? () {
                        logger.i("onPressed");
                      }
                    : null,
                style: sureButtonStyle,
                child: Text("登录"),
              ),
            ),
            SizedBox(height: 8),
            Align(
              alignment: Alignment.centerRight,
              child: Text("忘记密码", style: hintTextMediumStyle),
            ),
            Align(
              alignment: Alignment.center,
              child: Text("还没账号？快去注册", style: TextStyle(color: Colors.blue)),
            ),
          ],
        ),
      ),
    );
  }
}
