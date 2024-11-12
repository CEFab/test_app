import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:test_app/common/color_extension.dart';

class AddprojectScreen extends StatefulWidget {
  const AddprojectScreen({super.key});

  @override
  State<AddprojectScreen> createState() => _AddprojectScreenState();
}

class _AddprojectScreenState extends State<AddprojectScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const SizedBox(height: 10),
          AppBar(
            leading: Icon(CupertinoIcons.arrowtriangle_left_fill,
                color: TColor.primaryText, size: 24.0),
            title: Center(
              child: Text("Add Project",
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w700,
                    color: TColor.primaryText,
                  )),
            ),
            actions: [
              IconButton(
                icon: Icon(CupertinoIcons.bell_solid,
                    color: TColor.primaryText, size: 24.0),
                onPressed: () {},
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
