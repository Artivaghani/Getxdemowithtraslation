import 'package:demo/common_const/app_color.dart';
import 'package:demo/common_const/app_dimen.dart';
import 'package:flutter/material.dart';

Widget buttonwidget(
    {required String text,
    required TextStyle style,
    required Function() onPressed}) {
  return RaisedButton(
    onPressed: onPressed,
    child: Text(
      text,
      style: style,
    ),
    color: Appcolor.bluecolor,
    padding: EdgeInsets.only(top: Appdimen.dime8, bottom: Appdimen.dime8),
    shape: RoundedRectangleBorder(
      borderRadius: BorderRadius.circular(10),
    ),
  );
}
