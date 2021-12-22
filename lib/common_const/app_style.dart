import 'package:demo/common_const/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class Appstyle {
  static setheight(double value) {
    return SizedBox(height: Get.height * value);
  }

  static setwidth(double value) {
    return SizedBox(width: Get.width * value);
  }

  static InputDecoration forminputdecoration(String hint,
      {Function()? onPressed, bool? ispass, bool? ishow}) {
    return InputDecoration(
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedErrorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        focusedBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        filled: true,
        fillColor: Appcolor.lightblack,
        iconColor: Appcolor.whitecolor,
        suffixIcon: ispass != null
            ? IconButton(
                onPressed: onPressed,
                icon: !ishow!
                    ? Icon(Icons.visibility)
                    : Icon(
                        Icons.visibility_off,
                        color: Appcolor.greycolor,
                      ))
            : null,
        hintStyle: Appstyle.gerytext16,
        hintText: hint);
  }

  static TextStyle get whitetext16 =>
      TextStyle(color: Appcolor.whitecolor, fontSize: Get.height * 0.016);

  static TextStyle get whitetext18 =>
      TextStyle(color: Appcolor.whitecolor, fontSize: Get.height * 0.018);

  static TextStyle get whitetext22 =>
      TextStyle(color: Appcolor.whitecolor, fontSize: Get.height * 0.022);

  static TextStyle get gerytext14 =>
      TextStyle(color: Appcolor.greycolor, fontSize: Get.height * 0.014);

  static TextStyle get gerytext16 =>
      TextStyle(color: Appcolor.greycolor, fontSize: Get.height * 0.016);

  static TextStyle get bluetext16 =>
      TextStyle(color: Appcolor.bluecolor, fontSize: Get.height * 0.016);
}
