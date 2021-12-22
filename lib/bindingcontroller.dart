import 'package:demo/ProfileScreen.dart/profilecontroller.dart';
import 'package:demo/login/logincontroller.dart';
import 'package:demo/mycontroller.dart';
import 'package:get/get.dart';

class Bindingcontroller extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => Mycontroller());
    Get.lazyPut(() => Logincontroller());
    Get.lazyPut(() => ProfileController());
  }
}
