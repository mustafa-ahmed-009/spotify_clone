import 'package:flutter/material.dart';
import 'package:spotify/features/splash_view_and_intro/logo_splash_view_body.dart';

class SplashView extends StatelessWidget {
  const SplashView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SplashViewBody(),
    );
  }
}