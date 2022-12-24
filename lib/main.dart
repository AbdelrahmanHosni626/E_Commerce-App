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
        primaryColor: kPrimaryColor,
        primarySwatch: swatchColor,
        appBarTheme: const AppBarTheme(
          color: Colors.white,
          elevation: 0,
          iconTheme: IconThemeData(
            color: Colors.black,
          ),
          titleTextStyle: TextStyle(
            color: Color(0XFF8B8B8B),
            fontSize: 18,
            fontFamily: 'muli',
          ),
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
        inputDecorationTheme: InputDecorationTheme(
          floatingLabelBehavior: FloatingLabelBehavior.always,
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: kTextColor),
            gapPadding: 10,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
            borderSide: const BorderSide(color: kTextColor),
            gapPadding: 10,
          ),
          contentPadding: const EdgeInsets.symmetric(
            horizontal: 40,
            vertical: 20,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(28),
          ),
          labelStyle: const TextStyle(color: kTextColor),
        ),
      ),
      debugShowCheckedModeBanner: false,
      home: OnBoardingScreen(),
    );
  }
}
