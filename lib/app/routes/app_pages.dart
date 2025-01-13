import 'package:get/get.dart';

import '../modules/about_us/bindings/about_us_binding.dart';
import '../modules/about_us/views/about_us_view.dart';
import '../modules/blogs_page/blog_post_details/bindings/blog_post_details_binding.dart';
import '../modules/blogs_page/blog_post_details/views/blog_post_details_view.dart';
import '../modules/blogs_page/blogs/bindings/blogs_binding.dart';
import '../modules/blogs_page/blogs/views/blogs_view.dart';
import '../modules/community_chat_page/add_post/bindings/add_post_binding.dart';
import '../modules/community_chat_page/add_post/views/add_post_view.dart';
import '../modules/community_chat_page/community_chat/bindings/community_chat_binding.dart';
import '../modules/community_chat_page/community_chat/views/community_chat_view.dart';
import '../modules/community_chat_page/community_chat_details/bindings/community_chat_details_binding.dart';
import '../modules/community_chat_page/community_chat_details/views/community_chat_details_view.dart';
import '../modules/exchange/bindings/exchange_binding.dart';
import '../modules/exchange/views/exchange_view.dart';
import '../modules/home_page/add_journal/bindings/add_journal_binding.dart';
import '../modules/home_page/add_journal/views/add_journal_view.dart';
import '../modules/home_page/home/bindings/home_binding.dart';
import '../modules/home_page/home/views/home_view.dart';
import '../modules/home_page/journal/bindings/journal_binding.dart';
import '../modules/home_page/journal/views/journal_view.dart';
import '../modules/home_page/journal_details/bindings/journal_details_binding.dart';
import '../modules/home_page/journal_details/views/journal_details_view.dart';
import '../modules/home_page/mood_exercises/bindings/mood_exercises_binding.dart';
import '../modules/home_page/mood_exercises/views/mood_exercises_view.dart';
import '../modules/home_page/motivation_scroll/bindings/motivation_scroll_binding.dart';
import '../modules/home_page/motivation_scroll/views/motivation_scroll_view.dart';
import '../modules/main/bindings/main_binding.dart';
import '../modules/main/views/main_view.dart';
import '../modules/myLibrary/abuse_forms/bindings/abuse_forms_binding.dart';
import '../modules/myLibrary/abuse_forms/views/abuse_forms_view.dart';
import '../modules/myLibrary/my_library/bindings/my_library_binding.dart';
import '../modules/myLibrary/my_library/views/my_library_view.dart';
import '../modules/myLibrary/questionnaire/bindings/questionnaire_binding.dart';
import '../modules/myLibrary/questionnaire/views/questionnaire_view.dart';
import '../modules/myLibrary/support_types/bindings/support_types_binding.dart';
import '../modules/myLibrary/support_types/views/support_types_view.dart';
import '../modules/support_centre_page/hotline_numbers/bindings/hotline_numbers_binding.dart';
import '../modules/support_centre_page/hotline_numbers/views/hotline_numbers_view.dart';
import '../modules/support_centre_page/support_centre/bindings/support_centre_binding.dart';
import '../modules/support_centre_page/support_centre/views/support_centre_view.dart';
import '../modules/weather_page/bindings/weather_page_binding.dart';
import '../modules/weather_page/views/weather_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.WEATHER_PAGE;

  static final routes = [
    GetPage(
        name: _Paths.HOME,
        page: () => const HomeView(),
        binding: HomeBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.BLOGS,
        page: () => const BlogsView(),
        binding: BlogsBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.COMMUNITY_CHAT,
        page: () => const CommunityChatView(),
        binding: CommunityChatBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.CUPPORT_CENTRE,
        page: () => const SupportCentreView(),
        binding: SupportCentreBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.MAIN,
        page: () => const MainView(),
        binding: MainBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.HOTLINE_NUMBERS,
        page: () => const HotlineNumbersView(),
        binding: HotlineNumbersBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.ADD_POST,
        page: () => const AddPostView(),
        binding: AddPostBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.BLOG_POST_DETAILS,
        page: () => const BlogPostDetailsView(),
        binding: BlogPostDetailsBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.COMMUNITY_CHAT_DETAILS,
        page: () => const CommunityChatDetailsView(),
        binding: CommunityChatDetailsBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.MOOD_EXERCISES,
        page: () => const MoodExercisesView(),
        binding: MoodExercisesBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.JOURNAL,
        page: () => const JournalView(),
        binding: JournalBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.ADD_JOURNAL,
        page: () => const AddJournalView(),
        binding: AddJournalBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.JOURNAL_DETAILS,
        page: () => const JournalDetailsView(),
        binding: JournalDetailsBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.MOTIVATION_SCROLL,
        page: () => const MotivationScrollView(),
        binding: MotivationScrollBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.EXCHANGE,
        page: () => const ExchangeView(),
        binding: ExchangeBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.MY_LIBRARY,
        page: () => const MyLibraryView(),
        binding: MyLibraryBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.ABUSE_FORMS,
        page: () => const AbuseFormsView(),
        binding: AbuseFormsBinding(),
        transition: Transition.noTransition),
    GetPage(
        name: _Paths.QUESTIONNAIRE,
        page: () => const QuestionnaireView(),
        binding: QuestionnaireBinding(),
        transition: Transition.noTransition),
    GetPage(
      name: _Paths.SUPPORT_TYPES,
      page: () => const SupportTypesView(),
      binding: SupportTypesBinding(),
    ),
    GetPage(
      name: _Paths.WEATHER_PAGE,
      page: () => const WeatherPageView(),
      binding: WeatherPageBinding(),
    ),
    GetPage(
      name: _Paths.ABOUT_US,
      page: () => const AboutUsView(),
      binding: AboutUsBinding(),
    ),
  ];
}
