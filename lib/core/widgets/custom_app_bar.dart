import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:spotify/core/config/is_dark_mode.dart';
import 'package:spotify/core/config/router.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return AppBar(
      leading: Container(
        margin: EdgeInsets.all(5),
        decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: context.isDarkMode()
                ? Colors.white.withOpacity(0.03)
                : Colors.black.withOpacity(0.03)),
        child: GestureDetector(
            onTap: () {
              GoRouter.of(context).go(kChooseModePage);
            },
            child: const Icon(
              Icons.arrow_back_ios_new,
              size: 20,
            )),
      ),
    );
  }
}
