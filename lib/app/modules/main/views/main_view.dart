import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';
import 'package:wecare/app/modules/blogs_page/blogs/views/blogs_view.dart';
import 'package:wecare/app/modules/community_chat_page/community_chat/views/community_chat_view.dart';
import 'package:wecare/app/modules/support_centre_page/support_centre/views/support_centre_view.dart';

import '../../home_page/home/views/home_view.dart';
import '../controllers/main_controller.dart';

class MainView extends GetView<MainController> {
  const MainView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(
          () => Scaffold(
        body: IndexedStack(
          index: controller.bottomMenu  .value.index,
          children: const [
            HomeView(),
            BlogsView(),
            CommunityChatView(),
            SupportCentreView(),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(
          onTap: (pos) {
            return controller.setMenu(BottomMenu.values[pos]);
          },
          currentIndex: controller.bottomMenu.value.index,
          type: BottomNavigationBarType.fixed,
          selectedLabelStyle:
          const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          unselectedLabelStyle:
          const TextStyle(fontSize: 10, fontWeight: FontWeight.w500),
          elevation: 7,
          items: [
            _bottomNavigationBarItem(
              icon: 'home',
              label: "Home",
              activeIcon: 'home_active',
            ),
            _bottomNavigationBarItem(
              icon: 'blog',
              label: "Blogs",
              activeIcon: 'blog_active',
            ),
            _bottomNavigationBarItem(
              icon: 'community_chat',
              label: "Community".tr,
              activeIcon: 'community_chat_active',
            ),
            _bottomNavigationBarItem(
              icon: 'support',
              label: "Support".tr,
              activeIcon: 'support_active',
            ),
          ],
        ),
      ),
    );
  }

  _bottomNavigationBarItem({
    required String activeIcon,
    required String icon,
    required String label,
  }) {
    return BottomNavigationBarItem(
      icon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SizedBox(
            height: 22.5,
            width: 22.5,
            child: SvgPicture.asset('assets/svg/$icon.svg')),
      ),
      activeIcon: Padding(
        padding: const EdgeInsets.only(bottom: 4),
        child: SizedBox(
            height: 22.5,
            width: 22.5,
            child: SvgPicture.asset('assets/svg/$activeIcon.svg')),
      ),
      label: label,
    );
  }
}
