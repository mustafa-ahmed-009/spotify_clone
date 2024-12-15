import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify/core/assets/app_images.dart';
import 'package:spotify/core/assets/app_vectors.dart';
import 'package:spotify/core/config/router.dart';
import 'package:spotify/core/widgets/custom_app_bar.dart';
import 'package:spotify/core/widgets/custom_button.dart';

class AuthViewBody extends StatelessWidget {
  const AuthViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        CustomAppBar(),
        Align(
          alignment: Alignment.topRight,
          child: SvgPicture.asset(AppVectors.topPattern),
        ),
        Align(
          alignment: Alignment.bottomRight,
          child: SvgPicture.asset(AppVectors.bottomPattern),
        ),
        Align(
          alignment: Alignment.center,
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Align(
                  child: SvgPicture.asset(AppVectors.logo),
                ),
                const SizedBox(
                  height: 28,
                ),
                const Text(
                  "Enjoy Listening To Music",
                  style: TextStyle(fontWeight: FontWeight.bold, fontSize: 26),
                ),
                const SizedBox(
                  height: 21,
                ),
                const Text(
                  "Spotify Is a popular swedish audio streaming and media servies Provider",
                  style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 16,
                      color: Colors.grey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(
                  height: 21,
                ),
                Row(
                  children: [
                    Expanded(
                        child: CustomButton(
                            onPressed: () {
                              GoRouter.of(context).go(kSignUpPage);
                            },
                            title: "Register")),
                    const SizedBox(
                      width: 10,
                    ),
                    Expanded(
                        child: CustomButton(
                            onPressed: () {
                              GoRouter.of(context).go(kSignInPage);
                            },
                            title: "Sign In")),
                  ],
                )
              ],
            ),
          ),
        ),
        // Align(
        //   child: Container(
        //     width: 500,
        //     height: 500,
        //     child: Image.asset(
        //       AppImages.authBG,
        //     ),
        //   ),
        // )
      ],
    );
  }
}
