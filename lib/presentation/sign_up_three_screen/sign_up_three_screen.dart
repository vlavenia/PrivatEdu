import 'package:privatedu/core.dart';

import '../sign_up_three_screen/widgets/topicscomponent_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/app_bar/appbar_leading_image.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';
import 'package:privatedu/widgets/custom_elevated_button.dart';

class SignUpThreeScreen extends StatelessWidget {
  const SignUpThreeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 21.v),
                child: Column(children: [
                  _buildAppBar(context),
                  Text("Choose your topic interest",
                      style: theme.textTheme.headlineSmall),
                  SizedBox(height: 4.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Opacity(
                          opacity: 0.8,
                          child: Container(
                              width: 271.h,
                              margin: EdgeInsets.only(right: 55.h),
                              child: Text(
                                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit enim, ac amet ultrices.",
                                  maxLines: 2,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .bodyMediumBluegray50013
                                      .copyWith(height: 1.69))))),
                  SizedBox(height: 29.v),
                  _buildTopicsComponent(context)
                ])),
            bottomNavigationBar: _buildContinue(context)));
  }

  /// Section Widget
  Widget _buildAppBar(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        Navigator.pushReplacement(
            context,
            MaterialPageRoute(
                builder: (context) => HomepageOneContainerScreen()));
      },
      child: CustomAppBar(
          height: 48.v,
          leadingWidth: 48.h,
          leading: AppbarLeadingImage(
              imagePath: ImageConstant.imgArrowDownGray90002,
              margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v)),
          actions: [
            AppbarSubtitleOne(
                text: "Skip",
                margin: EdgeInsets.fromLTRB(24.h, 12.v, 24.h, 9.v)),
          ],
          styleType: Style.bgFill),
    );
  }

  /// Section Widget
  Widget _buildTopicsComponent(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Opacity(
              opacity: 0.5,
              child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 12.0.v),
                  child: SizedBox(
                      width: 327.h,
                      child: Divider(
                          height: 1.v,
                          thickness: 1.v,
                          color: appTheme.blueGray100.withOpacity(0.53)))));
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return TopicscomponentItemWidget();
        });
  }

  /// Section Widget
  Widget _buildContinue(BuildContext context) {
    return CustomElevatedButton(
        text: "Continue",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 40.v),
        onPressed: () {
          onTapContinue(context);
        });
  }

  /// Navigates to the signUpFourScreen when the action is triggered.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpFourScreen);
  }
}
