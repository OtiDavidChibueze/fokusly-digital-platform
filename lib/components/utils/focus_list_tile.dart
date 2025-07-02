import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FocusListTile extends StatelessWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? trailing;
  final void Function()? onTap;
  final void Function(bool)? onChanged;
  final bool value;
  final EdgeInsetsGeometry? contentPadding;

  const FocusListTile({
    super.key,
    this.leading,
    this.title,
    this.trailing,
    this.onTap,
    this.onChanged,
    this.value = false,
    this.contentPadding,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: contentPadding ?? EdgeInsets.all(0),
      leading: leading,
      title: title,
      trailing:
          trailing ??
          Transform.scale(
            scale: 0.60,
            child: CupertinoSwitch(
              value: value,
              onChanged: onChanged,
              activeTrackColor: Color.fromRGBO(6, 84, 91, 1),
            ),
          ),
      onTap: onTap,
    );
  }
}
