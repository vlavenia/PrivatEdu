import '../homepage_two_screen/widgets/subjects1_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/presentation/account_and_setting_page/account_and_setting_page.dart';
import 'package:privatedu/presentation/homepage_one_page/homepage_one_page.dart';
import 'package:privatedu/presentation/message_one_tab_container_page/message_one_tab_container_page.dart';
import 'package:privatedu/presentation/my_bookings_one_tab_container_page/my_bookings_one_tab_container_page.dart';
import 'package:privatedu/widgets/app_bar/appbar_leading_image.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';
import 'package:privatedu/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomepageTwoScreen extends StatelessWidget {
  HomepageTwoScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
            body: SingleChildScrollView(
              child: SafeArea(child: Container(child: Column(),)),
            ),
           );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 55.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 16.v, bottom: 15.v)),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "Education"));
  }

  /// Section Widget
 

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Grid:
        return AppRoutes.homepageOnePage;
      case BottomBarEnum.Fisrcalendar:
        return AppRoutes.myBookingsOneTabContainerPage;
      case BottomBarEnum.Fisrcomment:
        return AppRoutes.messageOneTabContainerPage;
      case BottomBarEnum.Fisruser:
        return AppRoutes.accountAndSettingPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepageOnePage:
        return HomepageOnePage();
      case AppRoutes.myBookingsOneTabContainerPage:
        return MyBookingsOneTabContainerPage();
      case AppRoutes.messageOneTabContainerPage:
        return MessageOneTabContainerPage();
      case AppRoutes.accountAndSettingPage:
        return AccountAndSettingPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the homepageThreeScreen when the action is triggered.
  onTapSubjects(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageThreeScreen);
  }
}
