import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/assets/app_vectors.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:spotify/features/splash_view_and_intro/presentation/managers/theme_cubit.dart';

class SelectedModeRow extends StatefulWidget {
  const SelectedModeRow({super.key});
  @override
  State<SelectedModeRow> createState() => _SelectedModeRowState();
}

class _SelectedModeRowState extends State<SelectedModeRow> {
  bool darkModeActive = false;
  bool lightModeActive = false;
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  context.read<ThemeCubit>().updateThemeMode(ThemeMode.dark);

                  darkModeActive = true;
                  lightModeActive = false;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: darkModeActive
                        ? Colors.white.withOpacity(0.3)
                        : Colors.white.withOpacity(0),
                    borderRadius: BorderRadius.circular(40)),
                child: SvgPicture.asset(
                  colorFilter: darkModeActive
                      ? ColorFilter.mode(Colors.white, BlendMode.srcIn)
                      : ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  AppVectors.moon,
                  height: 60,
                  width: 60,
                ),
              ),
            ),
            const Text("Dark Mode")
          ],
        ),
        const SizedBox(
          width: 150,
        ),
        Column(
          children: [
            InkWell(
              onTap: () {
                context.read<ThemeCubit>().updateThemeMode(ThemeMode.light);
                setState(() {
                  darkModeActive = false;
                  lightModeActive = true;
                });
              },
              child: Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: lightModeActive
                        ? Colors.white.withOpacity(0.3)
                        : Colors.white.withOpacity(0),
                    borderRadius: BorderRadius.circular(40)),
                child: SvgPicture.asset(
                  colorFilter: darkModeActive
                      ? ColorFilter.mode(Colors.white, BlendMode.srcIn)
                      : ColorFilter.mode(Colors.black, BlendMode.srcIn),
                  AppVectors.sun,
                  height: 60,
                  width: 60,
                ),
              ),
            ),
            const Text("Light mode"),
          ],
        ),
      ],
    );
  }
}
