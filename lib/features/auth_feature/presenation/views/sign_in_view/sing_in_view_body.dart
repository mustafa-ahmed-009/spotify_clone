import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/assets/app_vectors.dart';
import 'package:spotify/core/config/app_styles.dart';
import 'package:spotify/core/widgets/custom_app_bar.dart';
import 'package:spotify/core/widgets/custom_button.dart';
import 'package:spotify/core/widgets/custom_text_field.dart';

class SingInViewBody extends StatelessWidget {
  const SingInViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
      child: Column(
        children: [
          Row(
            children: [
              const BackWardIcon(),
              const Spacer(),
              SvgPicture.asset(AppVectors.logo),
              const Spacer(),
            ],
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 15,
              children: [
                Text(
                  "Sign In",
                  style: AppStyles.styleBold28(context),
                ),
                const CustomTextField(
                  text: "Enter your username or Email",
                ),
                const CustomTextField(
                  text: "Enter Password",
                ),
                CustomButton(onPressed: () {}, title: "Create an account")
              ],
            ),
          ),
        ],
      ),
    );
    ;
  }
}
