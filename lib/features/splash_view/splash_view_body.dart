import 'package:flutter/material.dart';
import 'package:spotify/core/adaptive_layout.dart';
import 'package:spotify/features/splash_view/splash_view_desktop_layout.dart';

class SplashViewBody extends StatelessWidget {
  const SplashViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return AdaptiveLayout(
      mobileLayout: (context) => const  SizedBox(),
      tabletLayout: (context) =>const SizedBox(),
      desktopLayout: (context) =>const SplashViewDesktopLayout(),
    );
  }
}
