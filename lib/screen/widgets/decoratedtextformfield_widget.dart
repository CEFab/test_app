import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DecoratedtextformfieldWidget extends StatelessWidget {
  const DecoratedtextformfieldWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: TextFormField(
          decoration: InputDecoration(
            labelText: "Project name",
            border: InputBorder.none,
            prefixIcon: Padding(
              padding: const EdgeInsets.all(5.0),
              child: Container(
                decoration: BoxDecoration(
                  color: const Color(0xffE4F2FF), // Fondo azul
                  borderRadius:
                      BorderRadius.circular(10), // Border radius de 10
                ), // Espaciado interno reducido
                child: const Icon(
                  CupertinoIcons.briefcase_fill,
                  color: Color(0xff78B8F4),
                  size: 15,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
