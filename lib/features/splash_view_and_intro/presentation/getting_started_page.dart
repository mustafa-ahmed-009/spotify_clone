import 'package:flutter/material.dart';

import 'package:spotify/features/splash_view_and_intro/presentation/getting_started_page_body.dart';

class GettingStartedView extends StatelessWidget {
  const GettingStartedView({super.key});

  @override
  Widget build(BuildContext context) {
    return  const Scaffold(
      body:  GettingStartedPageBody(),
    );
  }
}

