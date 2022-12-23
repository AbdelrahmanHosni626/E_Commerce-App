import 'package:e_commerce_app/shared/styles/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'modules/on_boarding/on_boarding_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        scaffoldBackgroundColor: Colors.white,
        primarySwatch: kPrimaryColor,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          systemOverlayStyle: SystemUiOverlayStyle(
            statusBarIconBrightness: Brightness.dark,
            statusBarColor: Colors.white,
          ),
        ),
        textTheme: const TextTheme(
          subtitle1: TextStyle(
            fontSize: 20,
            fontFamily: 'muli',
            fontWeight: FontWeight.bold,
            color: kPrimaryColor,
            height: 2,
          ),
          bodyText1: TextStyle(
            fontFamily: 'muli',
            fontSize: 16,
            fontWeight: FontWeight.normal,
            color: Colors.grey,
          ),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}