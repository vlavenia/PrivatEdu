import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Cover Screen",
                          onTapScreenTitle: () =>
                              onTapScreenTitle(context, AppRoutes.coverScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "On boarding Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.onBoardingThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In One",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign In Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signInThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up 1 ",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUp1Screen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Sign up Four",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.signUpFourScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HomePage One - Container",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homepageOneContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HomePage Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homepageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "HomePage Three",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.homepageThreeScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Detail Mentor",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.detailMentorScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Message Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.messageTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account and Setting - Profil",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.accountAndSettingProfilScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account and Setting - Account",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.accountAndSettingAccountScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Account and Setting - Setting",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.accountAndSettingSettingScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
