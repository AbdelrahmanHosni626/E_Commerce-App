import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_svg/svg.dart';
import 'package:fluttertoast/fluttertoast.dart';
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


void showToast({
  required String msg,
  required ToastStates state,
}) => Fluttertoast.showToast(
  msg: msg,
  toastLength: Toast.LENGTH_LONG,
  gravity: ToastGravity.BOTTOM,
  timeInSecForIosWeb: 5,
  backgroundColor: Colors.green,
  textColor: Colors.white,
  fontSize: 18.0,
);

enum ToastStates {SUCCESS, ERROR, WARNING}

Color chooseToastColor(ToastStates state) {
  Color color;
  switch (state) {
    case ToastStates.SUCCESS:
      color = Colors.green;
      break;
    case ToastStates.ERROR:
      color = Colors.red;
      break;
    case ToastStates.WARNING:
      color = Colors.yellow;
      break;
  }
  return color;
}

void navigateTo(context, widget) =>
    Navigator.push(context, MaterialPageRoute(builder: (context) => widget));

void navigateAndFinish(context, widget) => Navigator.pushAndRemoveUntil(
    context, MaterialPageRoute(builder: (context) => widget), (route) => false);
