import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle_four.dart';
import 'package:privatedu/widgets/app_bar/appbar_title_image.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';
import 'package:privatedu/widgets/custom_elevated_button.dart';

class CoverScreen extends StatelessWidget {
  const CoverScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        body: Container(
          width: SizeUtils.width,
          height: SizeUtils.height,
          decoration: BoxDecoration(
            color: appTheme.whiteA700,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgCoverScreen,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Container(
              padding: EdgeInsets.symmetric(vertical: 39.v),
              decoration: AppDecoration.gradientCyanToPrimary,
              child: Column(
                children: [
                  _buildAppBar(context),
                  Spacer(),
                  SizedBox(height: 5.v),
                  _buildLetsStart(context),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 24.v,
      title: AppbarTitleImage(
        imagePath: ImageConstant.imgUser,
        margin: EdgeInsets.only(left: 149.h),
      ),
      actions: [
        AppbarSubtitleFour(
          text: "PrivatEdu",
          margin: EdgeInsets.only(
            left: 6.h,
            right: 123.h,
            bottom: 1.v,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildLetsStart(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35.h),
      child: Column(
        children: [
          Container(
            width: 242.h,
            margin: EdgeInsets.only(
              left: 30.h,
              right: 32.h,
            ),
            child: Text(
              "Hello and \nwelcome here!",
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              textAlign: TextAlign.center,
              style: theme.textTheme.headlineLarge!.copyWith(
                height: 1.31,
              ),
            ),
          ),
          SizedBox(height: 18.v),
          Opacity(
            opacity: 0.6,
            child: SizedBox(
              width: 304.h,
              child: Text(
                "Get an overview of how you are performing and motivate yourself to achieve even moew.",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumWhiteA70013.copyWith(
                  height: 1.69,
                ),
              ),
            ),
          ),
          SizedBox(height: 47.v),
          CustomElevatedButton(
            width: 149.h,
            text: "Let’s Start",
            buttonStyle: CustomButtonStyles.fillWhiteA,
            buttonTextStyle: CustomTextStyles.titleMediumErrorContainerSemiBold,
          ),
        ],
      ),
    );
  }
}
