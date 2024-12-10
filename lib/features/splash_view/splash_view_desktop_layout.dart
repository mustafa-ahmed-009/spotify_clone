import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:spotify/core/assets/app_vectors.dart';

class SplashViewDesktopLayout extends StatelessWidget {
  const SplashViewDesktopLayout({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Align(
          child: SvgPicture.asset(
            AppVectors.logo,
          ),
        ),
      ],
    );
  }
}
