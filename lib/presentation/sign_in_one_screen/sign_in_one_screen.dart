import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';

class SignInOneScreen extends StatelessWidget {
  const SignInOneScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: CustomImageView(
          imagePath: ImageConstant.imgSignIn,
          height: 639.v,
          width: 375.h,
          margin: EdgeInsets.only(
            top: 52.v,
            bottom: 25.v,
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 51.v,
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "Sign In",
      ),
    );
  }
}
