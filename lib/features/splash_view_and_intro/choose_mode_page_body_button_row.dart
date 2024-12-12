import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_svg/svg.dart';
import 'package:spotify/core/assets/app_vectors.dart';

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
                  darkModeActive = true;
                  lightModeActive = false;
                });
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: darkModeActive
                        ? Colors.white.withOpacity(0.3)
                        : Colors.white.withOpacity(0),
                    borderRadius: BorderRadius.circular(40)),
                child: SvgPicture.asset(
                  AppVectors.moon,
                  height: 60,
                  width: 60,
                ),
              ),
            ),
            Text("Dark Mode")
          ],
        ),
        SizedBox(
          width: 150,
        ),
        Column(
          children: [
            InkWell(
              onTap: () {
                setState(() {
                  darkModeActive = false;
                  lightModeActive = true;
                });
              },
              child: Container(
                padding: EdgeInsets.all(10),
                decoration: BoxDecoration(
                    color: lightModeActive
                        ? Colors.white.withOpacity(0.3)
                        : Colors.white.withOpacity(0),
                    borderRadius: BorderRadius.circular(40)),
                child: SvgPicture.asset(
                  AppVectors.sun,
                  height: 60,
                  width: 60,
                ),
              ),
            ),
            Text("Light mode"),
          ],
        ),
      ],
    );
  }
}
