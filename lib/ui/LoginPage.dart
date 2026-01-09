import 'package:flutter/material.dart';
import 'package:project_deer/style/text_style.dart';
import 'package:project_deer/ui/widget/input_text.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
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
        padding: EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text("密码登录", style: titleTextLarge),
            AccountText(),
          ],
        ),
      ),
    );
  }
}
