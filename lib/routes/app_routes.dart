import 'package:flutter/material.dart';
import 'package:oldemy/presentation/light_onboarding_step_one_screen/light_onboarding_step_one_screen.dart';
import 'package:oldemy/presentation/light_onboarding_step_two_screen/light_onboarding_step_two_screen.dart';
import 'package:oldemy/presentation/light_onboarding_step_three_screen/light_onboarding_step_three_screen.dart';
import 'package:oldemy/presentation/light_authentication_screen/light_authentication_screen.dart';
import 'package:oldemy/presentation/light_dashboard_container_screen/light_dashboard_container_screen.dart';
import 'package:oldemy/presentation/light_courses_cart_screen/light_courses_cart_screen.dart';
import 'package:oldemy/presentation/light_course_detail_screen/light_course_detail_screen.dart';
import 'package:oldemy/presentation/light_course_playlist_tab_container_screen/light_course_playlist_tab_container_screen.dart';
import 'package:oldemy/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String lightOnboardingStepOneScreen =
      '/light_onboarding_step_one_screen';

  static const String lightOnboardingStepTwoScreen =
      '/light_onboarding_step_two_screen';

  static const String lightOnboardingStepThreeScreen =
      '/light_onboarding_step_three_screen';

  static const String lightAuthenticationScreen =
      '/light_authentication_screen';

  static const String lightDashboardPage = '/light_dashboard_page';

  static const String lightDashboardContainerScreen =
      '/light_dashboard_container_screen';

  static const String lightCourseResultPage = '/light_course_result_page';

  static const String lightCoursesCartScreen = '/light_courses_cart_screen';

  static const String lightCourseDetailScreen = '/light_course_detail_screen';

  static const String lightCoursePlaylistPage = '/light_course_playlist_page';

  static const String lightCoursePlaylistTabContainerScreen =
      '/light_course_playlist_tab_container_screen';

  static const String lightAccountPage = '/light_account_page';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    lightOnboardingStepOneScreen: (context) => LightOnboardingStepOneScreen(),
    lightOnboardingStepTwoScreen: (context) => LightOnboardingStepTwoScreen(),
    lightOnboardingStepThreeScreen: (context) =>
        LightOnboardingStepThreeScreen(),
    lightAuthenticationScreen: (context) => LightAuthenticationScreen(),
    lightDashboardContainerScreen: (context) => LightDashboardContainerScreen(),
    lightCoursesCartScreen: (context) => LightCoursesCartScreen(),
    lightCourseDetailScreen: (context) => LightCourseDetailScreen(),
    lightCoursePlaylistTabContainerScreen: (context) =>
        LightCoursePlaylistTabContainerScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
