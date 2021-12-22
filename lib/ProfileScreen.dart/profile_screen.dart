import 'package:demo/ProfileScreen.dart/profilecontroller.dart';
import 'package:demo/common_const/app_color.dart';
import 'package:demo/common_const/app_dimen.dart';
import 'package:demo/common_const/app_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileScreen extends GetView<ProfileController> {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          width: Get.width,
          height: Get.height,
          color: Appcolor.blakcolor,
          child: Obx(
            () => Center(
              child: controller.isloading.value
                  ? CircularProgressIndicator()
                  : Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: Appdimen.dime100,
                          height: Appdimen.dime100,
                          child: ClipRRect(
                            borderRadius:
                                BorderRadius.circular(Appdimen.dime50),
                            child: Image(
                              fit: BoxFit.cover,
                              image: NetworkImage(
                                controller.mymodel.value.data!.profilePic
                                    .toString(),
                              ),
                            ),
                          ),
                        ),
                        // Image.network(
                        //   controller.mymodel.value.data!.profilePic.toString(),
                        //   width: Appdimen.dime100,
                        //   height: Appdimen.dime100,
                        // ),
                        Appstyle.setheight(0.020),
                        Text(
                          controller.mymodel.value.data!.name.toString(),
                          style: Appstyle.whitetext22,
                        ),
                        Appstyle.setheight(0.020),
                        Text(
                          controller.mymodel.value.data!.emailId.toString(),
                          style: Appstyle.gerytext16,
                        ),
                        Appstyle.setheight(0.080),
                        GestureDetector(
                          onTap: () async {
                            var islogout = await controller.logout();
                            if (islogout) {
                              Get.offAllNamed('/login');
                            }
                          },
                          child: Text(
                            'logout'.tr,
                            style: Appstyle.whitetext16,
                          ),
                        ),
                      ],
                    ),
            ),
          )),
    );
  }
}
