import 'package:flutter/material.dart';

class TerminalDrawer extends StatelessWidget {
  final Widget child;
  const TerminalDrawer({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.black, borderRadius: BorderRadius.circular(16)),
      child: child,
    );
  }
}
