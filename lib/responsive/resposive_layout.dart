import 'package:flutter/material.dart';

class ResposiveLayout extends StatelessWidget {
  final Widget mobile;
  final Widget desktop;
  const ResposiveLayout(
      {super.key, required this.mobile, required this.desktop});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth < 600) {
        return mobile;
      } else {
        return desktop;
      }
    });
  }
}
