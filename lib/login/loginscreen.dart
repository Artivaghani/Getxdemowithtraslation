import 'package:demo/common_const/app_color.dart';
import 'package:demo/common_const/app_dimen.dart';

import 'package:demo/common_const/app_style.dart';
import 'package:demo/common_widget/button_widget.dart';
import 'package:demo/login/logincontroller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginScreen extends GetView<Logincontroller> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: Get.width,
        height: Get.height,
        color: Appcolor.blakcolor,
        child: Form(
          key: controller.formKey,
          autovalidateMode: AutovalidateMode.onUserInteraction,
          child: Center(
            child: ListView(
              shrinkWrap: true,
              children: [
                Padding(
                  padding: EdgeInsets.all(Appdimen.dime20),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        'welmsg'.tr,
                        style: Appstyle.whitetext22,
                      ),
                      Appstyle.setheight(0.020),
                      Text(
                        'loginstext'.tr,
                        style: Appstyle.gerytext16,
                      ),
                      Appstyle.setheight(0.10),
                      Padding(
                        padding: EdgeInsets.all(Appdimen.dime8),
                        child: TextFormField(
                            controller: controller.email,
                            style: Appstyle.whitetext16,
                            validator: (v) => controller.checkemail(v),
                            decoration:
                                Appstyle.forminputdecoration('emailhint'.tr)),
                      ),
                      Obx(
                        () => Padding(
                          padding: EdgeInsets.all(Appdimen.dime8),
                          child: TextFormField(
                              controller: controller.pass,
                              style: Appstyle.whitetext16,
                              obscureText: !controller.isshowpass.value,
                              validator: (v) => controller.checkpass(v),
                              decoration: Appstyle.forminputdecoration(
                                  'passhint'.tr,
                                  ispass: true,
                                  ishow: controller.isshowpass.value,
                                  onPressed: () {
                                if (controller.isshowpass.value) {
                                  controller.isshowpass(false);
                                } else {
                                  controller.isshowpass(true);
                                }

                                controller.update();
                              })),
                        ),
                      ),
                      Appstyle.setheight(0.020),
                      Align(
                        alignment: Alignment.topRight,
                        child: Text(
                          'forgotpass'.tr,
                          style: Appstyle.gerytext16,
                        ),
                      ),
                      Appstyle.setheight(0.040),
                      SizedBox(
                        width: Appdimen.dime250,
                        height: Appdimen.dime60,
                        child: buttonwidget(
                            style: Appstyle.whitetext18,
                            text: 'login'.tr,
                            onPressed: () async {
                              var islogin = await controller.islogin();
                              if (islogin) {
                                Get.offAllNamed('/profile');
                              }
                            }),
                      ),
                      Appstyle.setheight(0.020),
                      RichText(
                        text: TextSpan(
                          text: 'signupmsg'.tr,
                          style: Appstyle.whitetext16,
                          children: <TextSpan>[
                            TextSpan(
                                text: 'signup'.tr, style: Appstyle.bluetext16),
                          ],
                        ),
                      ),
                      Appstyle.setheight(0.020),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Radio(
                            groupValue: controller.langval.value,
                            onChanged: (int? value) {
                              var local = Locale('en', 'US');
                              Get.updateLocale(local);
                              controller.langval(value);
                            },
                            value: 1,
                          ),
                          Text(
                            'English',
                            style: controller.langval.value == 1
                                ? Appstyle.whitetext16
                                : Appstyle.gerytext16,
                          ),
                          Appstyle.setwidth(0.020),
                          Radio(
                            groupValue: controller.langval.value,
                            onChanged: (int? value) {
                              var local = Locale('hi', 'IN');
                              Get.updateLocale(local);
                              controller.langval(value);
                            },
                            value: 2,
                          ),
                          Text(
                            'Hindi',
                            style: controller.langval.value == 2
                                ? Appstyle.whitetext16
                                : Appstyle.gerytext16,
                          ),
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
