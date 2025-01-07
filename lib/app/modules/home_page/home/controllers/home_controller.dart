
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:wecare/app/const/consts.dart';

class HomeController extends GetxController {

  RxInt myFlowers = 0.obs;

  @override
  void onInit() async{
    SharedPreferences prefs = await SharedPreferences.getInstance();
    myFlowers.value = prefs.get('myFlowers') as int;
    super.onInit();
  }




  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }


}
