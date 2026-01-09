import 'package:flutter/material.dart';
import 'package:project_deer/ui/widget/load_image.dart';

class AccountText extends StatefulWidget {
  final TextEditingController controller;

  const AccountText({super.key, required this.controller});

  @override
  State<AccountText> createState() => _AccountTextState();
}

class _AccountTextState extends State<AccountText> {
  bool _showDel = false;

  @override
  void initState() {
    super.initState();
    _showDel = widget.controller.text.isNotEmpty;
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      decoration: InputDecoration(
        hintText: "请输入账号",
        suffix: _showDel
            ? LoadAssetsImage(
                "qyg_shop_icon_delete",
                prefix: "login",
                width: 20,
                height: 20,
              )
            : null,
      ),
      onChanged: (value) {
        _showDel = value.isNotEmpty;
      },
    );
  }
}

class PasswordText extends StatefulWidget {
  const PasswordText({super.key});

  @override
  State<PasswordText> createState() => _PasswordTextState();
}

class _PasswordTextState extends State<PasswordText> {
  bool _obscureText = true;
  final _controller = TextEditingController();

  @override
  void dispose() {
    super.dispose();
    _controller.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      controller: _controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: "请输入密码",
        suffixIcon: IconButton(
          icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
          onPressed: () {
            setState(() {
              _obscureText = !_obscureText; // 切换状态
            });
          },
        ),
      ),
    );
  }
}
