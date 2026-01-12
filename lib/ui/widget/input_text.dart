import 'package:flutter/material.dart';
import 'package:project_deer/ui/widget/load_image.dart';
import 'package:project_deer/util/log_utils.dart';

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
      maxLength: 11,
      controller: widget.controller,
      decoration: InputDecoration(
        hintText: "请输入账号",
        suffix: _showDel
            ? GestureDetector(
          child: LoadAssetsImage(
            "qyg_shop_icon_delete",
            prefix: "login",
            width: 20,
            height: 20,
          ),
          onTap: () {
            widget.controller.clear();
            setState(() {
              _showDel = false;
            });
          },
        )
            : null,
      ),
      onChanged: (value) {
        setState(() {
          _showDel = value.isNotEmpty;
        });
      },
    );
  }
}

class PasswordText extends StatefulWidget {
  final TextEditingController controller;

  const PasswordText({super.key, required this.controller});

  @override
  State<PasswordText> createState() => _PasswordTextState();
}

class _PasswordTextState extends State<PasswordText> {
  bool _obscureText = true;
  bool _showDel = false;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLength: 16,
      onChanged: (value) {
        setState(() {
          _showDel = value.isNotEmpty;
        });
      },
      controller: widget.controller,
      obscureText: _obscureText,
      decoration: InputDecoration(
        hintText: "请输入密码",
        suffix: Row(
          mainAxisSize: MainAxisSize.min,
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            if (_showDel)
              GestureDetector(
                child: LoadAssetsImage(
                  "qyg_shop_icon_delete",
                  prefix: "login",
                  width: 20,
                  height: 20,
                ),
                onTap: () {
                  widget.controller.clear();
                  setState(() {
                    _showDel = false;
                  });
                },
              ),
            SizedBox(width: 12),
            _obscureText
                ? GestureDetector(
              child: LoadAssetsImage(
                "qyg_shop_icon_hide",
                prefix: "login",
                width: 20,
                height: 20,
              ),
              onTap: () {
                setState(() {
                  _obscureText = false;
                });
              },
            )
                : GestureDetector(
              child: LoadAssetsImage(
                "qyg_shop_icon_display",
                prefix: "login",
                width: 20,
                height: 20,
              ),
              onTap: () {
                _obscureText = true;
              },
            ),
          ],
        ),
      ),
    );
  }
}
