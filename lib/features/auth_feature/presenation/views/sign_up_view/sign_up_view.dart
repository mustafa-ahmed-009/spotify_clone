import 'package:flutter/material.dart';
import 'package:spotify/features/auth_feature/presenation/views/sign_up_view/sign_up_view_body.dart';

class SignUpView extends StatelessWidget {
  const SignUpView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: SignUpViewBody(),
    ); 
  }
}
