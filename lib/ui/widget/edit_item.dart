import 'package:flutter/material.dart';
import 'package:project_deer/style/text_style.dart';
import 'package:project_deer/ui/widget/load_image.dart';

class EditWithNameItem extends StatelessWidget {
  final String name;
  final String? hintText;

  const EditWithNameItem(this.name, {super.key, this.hintText = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(name, style: bodyTextMedium),
            SizedBox(width: 16),
            Flexible(
              child: TextField(
                decoration: InputDecoration(
                  isDense: true,
                  border: InputBorder.none,
                  enabledBorder: InputBorder.none,
                  focusedBorder: InputBorder.none,
                  hintText: hintText,
                  hintStyle: hintTextMediumStyle,
                ),
              ),
            ),
          ],
        ),
        Divider(color: Colors.grey.withAlpha(50)),
      ],
    );
  }
}

class EditWithGoItem extends StatelessWidget {
  final String name;
  final String content;

  const EditWithGoItem(this.name, {super.key, this.content = ""});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          children: [
            Text(name, style: bodyTextMedium),
            SizedBox(width: 16),
            Expanded(child: Text(content, style: bodyTextMedium)),
            LoadAssetsImage("ic_arrow_right", width: 20, height: 20),
          ],
        ),
        Divider(color: Colors.grey.withAlpha(50)),
      ],
    );
  }
}
