import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import '../styles/colors.dart';

Widget backButton(context) => IconButton(
  onPressed: () {
    Navigator.pop(context);
  },
  icon: const Icon(Icons.arrow_back_ios_new_rounded),
);


Widget defaultButton({
  Color? bgColor = kPrimaryColor,
  required Function function,
  required String text,
}) =>
    Container(
      width: double.infinity,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(25),
      ),
      child: IconButton(
        color: kPrimaryColor,
        onPressed: () {},
        icon: const Text(
          'Continue',
          style: TextStyle(color: Colors.white, fontSize: 20),
        ),
      ),
    );

Widget defaultFormField({
  required TextEditingController controller,
  required TextInputType type,
  VoidCallback? onTap,
  ValueChanged<String>? onChanged,
  ValueChanged<String>? onSubmit,
  bool? isPassword = false,
  required FormFieldValidator<String> validate,
  String? labelText,
  String? hintText,
  String? suffixIcon,
}) =>
    TextFormField(
      controller: controller,
      keyboardType: type,
      onTap: onTap,
      onChanged: onChanged,
      onFieldSubmitted: onSubmit,
      obscureText: isPassword!,
      validator: validate,
      decoration: InputDecoration(
        labelText: labelText,
        hintText: hintText,
        suffixIcon: Padding(
          padding: const EdgeInsets.fromLTRB(0, 28, 28, 28),
          child: SvgPicture.asset(
            suffixIcon!,
            height: 20,
          ),
        ),
      ),
    );

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);
