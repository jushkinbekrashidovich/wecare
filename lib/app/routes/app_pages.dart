import 'package:get/get.dart';


import '../modules/blogs_page/blogs/bindings/blogs_binding.dart';
import '../modules/blogs_page/blogs/views/blogs_view.dart';
import '../modules/community_chat_page/community_chat/bindings/community_chat_binding.dart';
import '../modules/community_chat_page/community_chat/views/community_chat_view.dart';
import '../modules/home_page/home/bindings/home_binding.dart';
import '../modules/home_page/home/views/home_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/support_centre_page/support_centre/bindings/support_centre_binding.dart';
import '../modules/support_centre_page/support_centre/views/support_centre_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.MAIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.BLOGS,
      page: () => const BlogsView(),
      binding: BlogsBinding(),
    ),
    GetPage(
      name: _Paths.COMMUNITY_CHAT,
      page: () => const CommunityChatView(),
      binding: CommunityChatBinding(),
    ),
    GetPage(
      name: _Paths.CUPPORT_CENTRE,
      page: () => const SupportCentreView(),
      binding: SupportCentreBinding(),
    ),
    GetPage(
      name: _Paths.MAIN,
      page: () => const MainView(),
      binding: MainBinding(),
    ),
  ];
}
