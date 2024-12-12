import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify/core/assets/app_images.dart';
import 'package:spotify/core/assets/app_vectors.dart';
import 'package:spotify/core/config/router.dart';
import 'package:spotify/core/widgets/custom_button.dart';

class GettingStartedPageBody extends StatelessWidget {
  const GettingStartedPageBody({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
          image: DecorationImage(
              image: AssetImage(
                AppImages.introBG,
              ),
              fit: BoxFit.cover)),
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 12),
        child: Column(
          children: [
         const    SizedBox(
              height: 5,
            ),
            SvgPicture.asset(AppVectors.logo),
            const Spacer(),
            const Text(
              "Enjoy Listening To music",
              style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 5,
            ),
            const Text(
              "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries",
              style: TextStyle(fontSize: 14, fontWeight: FontWeight.w300),
            ),
            SizedBox(
              height: 5,
            ),
            CustomButton(
              title: "Get Started",
              onPressed: () {
                GoRouter.of(context).go(kChooseModePage);
              },
            )
          ],
        ),
      ),
    );
  }
}
