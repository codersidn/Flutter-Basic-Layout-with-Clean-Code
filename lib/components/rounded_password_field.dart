import 'package:flutter/material.dart';

import 'constants.dart';
import 'text_field_container.dart';

class RoundedInputPasswordField extends StatelessWidget {
  final String hintText;
  final ValueChanged<String> onChange;
  final IconData icon;
  const RoundedInputPasswordField({
    Key key,
    this.hintText,
    this.onChange,
    this.icon = Icons.visibility,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFieldContainer(
      child: TextField(
        obscureText: true,
        onChanged: onChange,
        cursorColor: kPrimaryColor,
        decoration: InputDecoration(
          icon: Icon(
            icon,
            color: kPrimaryColor,
          ),
          hintText: hintText,
          border: InputBorder.none,
        ),
      ),
    );
  }
}
