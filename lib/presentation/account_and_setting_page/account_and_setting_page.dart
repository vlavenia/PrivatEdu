import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle_three.dart';
import 'package:privatedu/widgets/app_bar/appbar_title_image.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';
import 'package:privatedu/widgets/custom_icon_button.dart';

class AccountAndSettingPage extends StatelessWidget {
  const AccountAndSettingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 23.h, vertical: 6.v),
                child: Column(children: [
                  _buildProfile(context),
                  SizedBox(height: 20.v),
                  Divider(color: appTheme.gray10002),
                  SizedBox(height: 39.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.h),
                      child: _buildAccount(context, dynamicProperty2: "Profile",
                          onTapAccount: () {
                        onTapProfil(context);
                      })),
                  SizedBox(height: 25.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.h),
                      child: _buildAccount(context, dynamicProperty2: "Account",
                          onTapAccount: () {
                        onTapAccount(context);
                      })),
                  SizedBox(height: 25.v),
                  Padding(
                      padding: EdgeInsets.symmetric(horizontal: 1.h),
                      child: _buildAccount(context, dynamicProperty2: "About",
                          onTapAccount: () {
                        onTapAbout(context);
                      })),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        centerTitle: true,
        title: Column(children: [
          Padding(
              padding: EdgeInsets.only(left: 120.h, right: 105.h),
              child: Row(children: [
                AppbarTitleImage(imagePath: ImageConstant.imgUserPrimary),
                AppbarSubtitleThree(
                    text: "PrivatEdu", margin: EdgeInsets.only(left: 5.h))
              ])),
          SizedBox(height: 16.v),
          SizedBox(width: 327.h, child: Divider(color: appTheme.gray10002))
        ]),
        styleType: Style.bgFill_1);
  }

  /// Section Widget
  Widget _buildProfile(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 1.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgWithOutlineRegular,
              height: 58.adaptSize,
              width: 58.adaptSize,
              radius: BorderRadius.circular(29.h)),
          Padding(
              padding: EdgeInsets.only(left: 12.h, top: 3.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Welcome",
                        style: CustomTextStyles.bodyMediumBluegray500_1),
                    SizedBox(height: 5.v),
                    Text("Marvin McKinney",
                        style: CustomTextStyles.titleMediumGray90002)
                  ])),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 9.v),
              child: CustomIconButton(
                  height: 40.adaptSize,
                  width: 40.adaptSize,
                  padding: EdgeInsets.all(12.h),
                  decoration: IconButtonStyleHelper.fillGray,
                  onTap: () {
                    onTapBtnFiRrSignOut(context);
                  },
                  child:
                      CustomImageView(imagePath: ImageConstant.imgFiRrSignOut)))
        ]));
  }

  /// Common widget
  Widget _buildAccount(
    BuildContext context, {
    required String dynamicProperty2,
    Function? onTapAccount,
  }) {
    return GestureDetector(
        onTap: () {
          onTapAccount!.call();
        },
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomIconButton(
              height: 40.adaptSize,
              width: 40.adaptSize,
              padding: EdgeInsets.all(10.h),
              decoration: IconButtonStyleHelper.fillCyan,
              child:
                  CustomImageView(imagePath: ImageConstant.imgFiRrShieldCheck)),
          Padding(
              padding: EdgeInsets.only(left: 14.h, top: 9.v, bottom: 7.v),
              child: Text(dynamicProperty2,
                  style: theme.textTheme.titleSmall!
                      .copyWith(color: appTheme.gray90002))),
          Spacer(),
          CustomImageView(
              imagePath: ImageConstant.imgFiRrAngleSmallRight,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.symmetric(vertical: 12.v))
        ]));
  }

  /// Navigates to the signInOneScreen when the action is triggered.
  onTapBtnFiRrSignOut(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInOneScreen);
  }

  /// Navigates to the accountAndSettingProfilScreen when the action is triggered.
  onTapProfil(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountAndSettingProfilScreen);
  }

  /// Navigates to the accountAndSettingAccountScreen when the action is triggered.
  onTapAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountAndSettingAccountScreen);
  }

  /// Navigates to the accountAndSettingSettingScreen when the action is triggered.
  onTapAbout(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.accountAndSettingSettingScreen);
  }
}
