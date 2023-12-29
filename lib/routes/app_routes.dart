import 'package:flutter/material.dart';
import 'package:privatedu/presentation/cover_screen/cover_screen.dart';
import 'package:privatedu/presentation/on_boarding_three_screen/on_boarding_three_screen.dart';
import 'package:privatedu/presentation/sign_in_one_screen/sign_in_one_screen.dart';
import 'package:privatedu/presentation/sign_in_two_screen/sign_in_two_screen.dart';
import 'package:privatedu/presentation/sign_in_three_screen/sign_in_three_screen.dart';
import 'package:privatedu/presentation/sign_up_1_screen/sign_up_1_screen.dart';
import 'package:privatedu/presentation/sign_up_three_screen/sign_up_three_screen.dart';
import 'package:privatedu/presentation/sign_up_four_screen/sign_up_four_screen.dart';
import 'package:privatedu/presentation/homepage_one_container_screen/homepage_one_container_screen.dart';
import 'package:privatedu/presentation/homepage_two_screen/homepage_two_screen.dart';
import 'package:privatedu/presentation/homepage_three_screen/homepage_three_screen.dart';
import 'package:privatedu/presentation/detail_mentor_screen/detail_mentor_screen.dart';
import 'package:privatedu/presentation/message_two_screen/message_two_screen.dart';
import 'package:privatedu/presentation/account_and_setting_profil_screen/account_and_setting_profil_screen.dart';
import 'package:privatedu/presentation/account_and_setting_account_screen/account_and_setting_account_screen.dart';
import 'package:privatedu/presentation/account_and_setting_setting_screen/account_and_setting_setting_screen.dart';
import 'package:privatedu/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  

  static const String coverScreen = '/cover_screen';

  static const String onBoardingThreeScreen = '/on_boarding_three_screen';

  static const String signInOneScreen = '/sign_in_one_screen';

  static const String signInTwoScreen = '/sign_in_two_screen';

  static const String signInThreeScreen = '/sign_in_three_screen';

  static const String signUp1Screen = '/sign_up_1_screen';

  static const String signUpThreeScreen = '/sign_up_three_screen';

  static const String signUpFourScreen = '/sign_up_four_screen';

  static const String homepageOnePage = '/homepage_one_page';

  static const String homepageOneContainerScreen =
      '/homepage_one_container_screen';

  static const String homepageTwoScreen = '/homepage_two_screen';

  static const String homepageThreeScreen = '/homepage_three_screen';

  static const String detailMentorScreen = '/detail_mentor_screen';

  static const String myBookingsOnePage = '/my_bookings_one_page';

  static const String myBookingsOneTabContainerPage =
      '/my_bookings_one_tab_container_page';

  static const String myBookingsTwoPage = '/my_bookings_two_page';

  static const String messageOnePage = '/message_one_page';

  static const String messageOneTabContainerPage =
      '/message_one_tab_container_page';

  static const String messageTwoScreen = '/message_two_screen';

  static const String accountAndSettingPage = '/account_and_setting_page';

  static const String accountAndSettingProfilScreen =
      '/account_and_setting_profil_screen';

  static const String accountAndSettingAccountScreen =
      '/account_and_setting_account_screen';

  static const String accountAndSettingSettingScreen =
      '/account_and_setting_setting_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    coverScreen: (context) => CoverScreen(),
    onBoardingThreeScreen: (context) => OnBoardingThreeScreen(),
    signInOneScreen: (context) => SignInOneScreen(),
    signInTwoScreen: (context) => SignInTwoScreen(),
    signInThreeScreen: (context) => SignInThreeScreen(),
    signUp1Screen: (context) => SignUp1Screen(),
    signUpThreeScreen: (context) => SignUpThreeScreen(),
    signUpFourScreen: (context) => SignUpFourScreen(),
    homepageOneContainerScreen: (context) => HomepageOneContainerScreen(),
    homepageTwoScreen: (context) => HomepageTwoScreen(),
    homepageThreeScreen: (context) => HomepageThreeScreen(),
    detailMentorScreen: (context) => DetailMentorScreen(),
    messageTwoScreen: (context) => MessageTwoScreen(),
    accountAndSettingProfilScreen: (context) => AccountAndSettingProfilScreen(),
    accountAndSettingAccountScreen: (context) =>
        AccountAndSettingAccountScreen(),
    accountAndSettingSettingScreen: (context) =>
        AccountAndSettingSettingScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
