import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class Mycontroller extends GetxController {
  islogin() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    return prefs.getBool('login');
  }
}
