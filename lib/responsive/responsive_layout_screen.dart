import 'package:flutter/material.dart';

import '../utils/dimensions.dart';

class ResponsiveLayout extends StatelessWidget {
  final Widget WebScreenLayout;
  final Widget MobileScreenLayout;
  const ResponsiveLayout(
      {super.key,
      required this.WebScreenLayout,
      required this.MobileScreenLayout});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      if (constraints.maxWidth > webScreenSize) {
        // Web screen
        return WebScreenLayout;
      }
      // Mobile screen
      return MobileScreenLayout;
    });
  }
}
