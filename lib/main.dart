import 'package:flutter/material.dart';
import 'package:spotify/core/config/router.dart';
import 'package:spotify/core/themes/app_light_theme.dart';

void main() {
  runApp(const SpotifyClone());
}

class SpotifyClone extends StatelessWidget {
  const SpotifyClone({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: AppTheme.darkTheme,
      debugShowCheckedModeBanner: false,
      routerConfig: router,
    );
  }
}
