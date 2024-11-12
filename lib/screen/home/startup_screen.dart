import 'package:flutter/material.dart';
import 'package:test_app/common/color_extension.dart';
import 'package:test_app/common_widget/round_button.dart';

class StartupScreen extends StatefulWidget {
  const StartupScreen({super.key});

  @override
  State<StartupScreen> createState() => _StartupScreenState();
}

class _StartupScreenState extends State<StartupScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 100),
          Image.asset(
            "img/starup_top.png",
            width: double.maxFinite,
            fit: BoxFit.fitWidth,
          ),
          const Spacer(),
          Container(
            width: 240,
            child: Text(
              textAlign: TextAlign.center,
              " Task Management & To-Do List",
              style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w700,
                color: TColor.primaryText,
              ),
            ),
          ),
          const SizedBox(height: 20),
          Container(
            width: 300,
            child: Text(
              textAlign: TextAlign.center,
              "This productive tool is designed to help you better manage your task project-wise conveniently!",
              style: TextStyle(
                fontSize: 14,
                color: TColor.secondaryText,
              ),
            ),
          ),
          const Spacer(),
          RoundButton(title: "Let's Start", onPressed: () {}),
          const Spacer(),
        ],
      ),
    );
  }
}
