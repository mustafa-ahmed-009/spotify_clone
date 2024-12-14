import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify/core/assets/app_vectors.dart';
import 'package:spotify/core/config/router.dart';
import 'package:spotify/core/widgets/custom_button.dart';
import 'package:spotify/features/splash_view_and_intro/presentation/choose_mode_page_body_button_row.dart';

class ChooseModePageBody extends StatelessWidget {
  const ChooseModePageBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const SizedBox(
            height: 5,
          ),
          Align(
            alignment: Alignment.center,
            child: SvgPicture.asset(AppVectors.logo),
          ),
          const Spacer(),
          const Text(
            "Choose Mode",
            style: TextStyle(
              fontSize: 30,
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const SelectedModeRow(),
          const SizedBox(
            height: 15,
          ),
          const Spacer(),
          const SizedBox(
            height: 35,
          ),
          CustomButton(
              onPressed: () {
                GoRouter.of(context).go(kAuthPage);
              },
              title: "Continue")
        ],
      ),
    );
  }
}
