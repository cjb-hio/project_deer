import 'package:flutter/material.dart';

class AccountText extends StatelessWidget {
  const AccountText({super.key});

  @override
  Widget build(BuildContext context) {
    return TextField(decoration: InputDecoration(hint: Text("请输入账号")));
  }
}
