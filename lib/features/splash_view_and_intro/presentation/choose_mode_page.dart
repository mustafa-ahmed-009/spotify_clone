import 'package:flutter/material.dart';
import 'package:spotify/features/splash_view_and_intro/presentation/choose_mode_page_body.dart';

class ChooseModePage extends StatelessWidget {
  const ChooseModePage({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: ChooseModePageBody()
    );
  }
}