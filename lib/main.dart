import 'dart:io';

import 'package:demo/ProfileScreen.dart/profile_screen.dart';
import 'package:demo/bindingcontroller.dart';
import 'package:demo/common_const/app_color.dart';
import 'package:demo/common_const/app_dimen.dart';
import 'package:demo/common_const/app_img.dart';

import 'package:demo/common_const/app_style.dart';
import 'package:demo/common_widget/button_widget.dart';
import 'package:demo/login/loginscreen.dart';
import 'package:demo/mycontroller.dart';
import 'package:demo/translationstring.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  HttpOverrides.global = new MyHttpOverrides();
  runApp(MyApp());
}

class MyHttpOverrides extends HttpOverrides {
  @override
  HttpClient createHttpClient(SecurityContext? context) {
    return super.createHttpClient(context)
      ..badCertificateCallback =
          (X509Certificate cert, String host, int port) => true;
  }
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      translations: LocalString(),
      locale: Locale('en', 'US'),
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialBinding: Bindingcontroller(),
      // home: Splashcreen(),
      getPages: [
        GetPage(name: '/', page: () => Splashcreen()),
        GetPage(
          name: '/login',
          page: () => LoginScreen(),
          binding: Bindingcontroller(),
        ),
        GetPage(
          name: '/profile',
          page: () => ProfileScreen(),
        ),
      ],
      debugShowCheckedModeBanner: false,
    );
  }
}

class Splashcreen extends GetView<Mycontroller> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return Stack(
      children: [
        Image.asset(
          AppImages.splaceimg,
          fit: BoxFit.cover,
          width: Get.width,
          height: Get.height,
        ),
        // Container(
        //   decoration: BoxDecoration(
        //       image: DecorationImage(
        //         image: AssetImage(AppImages.splaceimg),
        //         fit: BoxFit.cover,
        //       ),
        //       color: Colors.black),
        //   child: null /* add child content here */,
        // ),
        Container(
          color: Appcolor.blakcolor.withOpacity(0.5),
          width: double.infinity,
          height: double.infinity,
          alignment: Alignment.bottomCenter,
          child: Padding(
              padding: EdgeInsets.only(bottom: Appdimen.dime35),
              child: SizedBox(
                width: Appdimen.dime250,
                height: Appdimen.dime60,
                child: buttonwidget(
                    style: Appstyle.whitetext18,
                    text: 'getstatmag'.tr,
                    onPressed: () async {
                      var login = await controller.islogin();
                      if (login) {
                        Get.offNamed(
                          '/profile',
                        );
                      } else {
                        Get.offNamed(
                          '/login',
                        );
                      }
                    }),
              )),
        )
      ],
    );
  }
}
