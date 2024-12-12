import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:spotify/features/auth_feature/presenation/views/auth_view_body.dart';

class AuthView extends StatelessWidget {
  const AuthView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: AuthViewBody(),
    );
  }
}
