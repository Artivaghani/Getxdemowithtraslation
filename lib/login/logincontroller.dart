import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Logincontroller extends GetxController {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  TextEditingController email = TextEditingController();
  TextEditingController pass = TextEditingController();

  RxInt langval = 1.obs;
  RxBool isshowpass = false.obs;

  checkemail(String? value) {
    if (!GetUtils.isEmail(value!)) {
      return 'emailerrormsg'.tr;
    }
    return null;
  }

  checkpass(String? value) {
    if (value!.length < 6) {
      return 'passerrormsg'.tr;
    }
    return null;
  }

  islogin() async {
    if (!formKey.currentState!.validate()) {
      return false;
    }

    formKey.currentState!.save();
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('login', true);
    print(email.text.toString());
    print(pass.text.toString());
    return true;
  }
}
