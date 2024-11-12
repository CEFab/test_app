import 'package:flutter/material.dart';
import 'package:test_app/common/color_extension.dart';
import 'package:test_app/screen/home/startup_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          fontFamily: 'LexendDeca',
          scaffoldBackgroundColor: Colors.white,
          appBarTheme: const AppBarTheme(
              elevation: 0, backgroundColor: Colors.transparent),
          colorScheme: ColorScheme.fromSeed(seedColor: TColor.primary),
          useMaterial3: false),
      home: const StartupScreen(),
    );
  }
}
