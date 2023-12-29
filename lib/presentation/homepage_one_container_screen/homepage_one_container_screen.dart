import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/presentation/account_and_setting_page/account_and_setting_page.dart';
import 'package:privatedu/presentation/homepage_one_page/homepage_one_page.dart';
import 'package:privatedu/presentation/message_one_tab_container_page/message_one_tab_container_page.dart';
import 'package:privatedu/presentation/my_bookings_one_tab_container_page/my_bookings_one_tab_container_page.dart';
import 'package:privatedu/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class HomepageOneContainerScreen extends StatelessWidget {
  HomepageOneContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
            body: 
            Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homepageOnePage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context));
  }

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
}
