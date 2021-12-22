import 'package:demo/ProfileScreen.dart/pro_model.dart';
import 'package:demo/network/apiservice.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  Rx<ProModel> mymodel = ProModel().obs;
  RxBool isloading = true.obs;

  @override
  onInit() {
    fatchdata();
  }

  fatchdata() async {
    try {
      isloading(true);
      var product = await Apiservice.fatchdata();
      mymodel(ProModel.fromJson(product));
    } finally {
      isloading(false);
    }
  }

  logout() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.setBool('login', false);
    return true;
  }
}
