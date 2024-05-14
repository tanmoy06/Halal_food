import 'package:flutter/material.dart';

class MyListTile extends StatelessWidget {
  final Widget leading;
  final Widget title;
  final Widget subtitle;
  final Widget trailing;
  const MyListTile(
      {super.key,
      required this.leading,
      required this.title,
      required this.subtitle,
      required this.trailing});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            blurRadius: 16,
            offset: Offset(0, 4),
          ),
        ],
      ),
      child: ListTile(
        leading: leading,
        trailing: trailing,
        title: title,
        subtitle: subtitle,
      ),
    );
  }
}
