import 'package:flutter/material.dart';
import 'package:spotify/features/auth_feature/presenation/views/auth_mode_view_body.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: AuthViewBody(),
    );
  }
}