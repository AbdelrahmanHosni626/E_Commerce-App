import 'package:flutter/material.dart';
import '../styles/colors.dart';

Widget defaultButton({
  Color? bgColor = kPrimaryColor,
  required Function function,
  required String text,
}) =>
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: bgColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: MaterialButton(
        onPressed: function(),
        child: Text(
          text,
          style: const TextStyle(
            fontSize: 20,
            color: Colors.white,
          ),
        ),
      ),
    );

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);
