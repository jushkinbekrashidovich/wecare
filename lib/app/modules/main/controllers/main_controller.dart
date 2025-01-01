import 'package:get/get.dart';

class MainController extends GetxController {
  //TODO: Implement MainController

  final count = 0.obs;



  Rx<BottomMenu> myEnum = BottomMenu.home.obs;
  void setMenu(BottomMenu menu) {
    myEnum.value = menu;

  }
  Rx<BottomMenu> get bottomMenu => myEnum;

}
enum BottomMenu {  home, plan,  leaderboard, profile}
