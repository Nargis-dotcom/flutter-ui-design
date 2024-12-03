import 'package:flutter/material.dart';
import 'package:ui_design/screens/LandingScreen.dart';
import 'package:ui_design/utils/constants.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double screenWidth = View.of(context).physicalSize.width;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Design 1',
      theme: ThemeData(
          scaffoldBackgroundColor: COLOR_WHITE,
          colorScheme: ColorScheme.light(secondary: COLOR_DARK_BLUE),
          textTheme: screenWidth < 500 ? TEXT_THEME_SMALL : TEXT_THEME_DEFAULT,
          fontFamily: "Montserrat"),
      home: LandingScreen(),
    );
  }
}
