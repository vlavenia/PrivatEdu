import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/custom_icon_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnBoardingThreeScreen extends StatelessWidget {
  OnBoardingThreeScreen({Key? key})
      : super(
          key: key,
        );

  PageController pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(
                height: 639.v,
                child: PageView(
                  controller: pageController,
                  scrollDirection: Axis.horizontal,
                  children: [
                    Column(
                      children: [
                        SizedBox(
                          height: 440.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle953,
                                height: 440.v,
                                width: 375.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: double.maxFinite,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 132.h,
                                    vertical: 38.v,
                                  ),
                                  decoration:
                                      AppDecoration.gradientCyanToPrimary,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgUser,
                                        height: 34.adaptSize,
                                        width: 34.adaptSize,
                                        margin: EdgeInsets.only(
                                          top: 325.v,
                                          bottom: 2.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 329.v),
                                        child: Text(
                                          "Study",
                                          style: CustomTextStyles
                                              .titleLargeWhiteA700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Container(
                          width: 281.h,
                          margin: EdgeInsets.only(
                            left: 46.h,
                            top: 28.v,
                            right: 47.h,
                          ),
                          child: Text(
                            "Get the best class, with the best teacher ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: theme.textTheme.headlineSmall!.copyWith(
                              height: 1.17,
                            ),
                          ),
                        ),
                        Container(
                          width: 272.h,
                          margin: EdgeInsets.only(
                            left: 51.h,
                            top: 8.v,
                            right: 51.h,
                          ),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit enim, ac amet ultrices.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBluegray50013_2
                                .copyWith(
                              height: 1.69,
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 440.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle953,
                                height: 440.v,
                                width: 375.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: double.maxFinite,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 132.h,
                                    vertical: 38.v,
                                  ),
                                  decoration:
                                      AppDecoration.gradientCyanToPrimary,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgUser,
                                        height: 34.adaptSize,
                                        width: 34.adaptSize,
                                        margin: EdgeInsets.only(
                                          top: 325.v,
                                          bottom: 2.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 329.v),
                                        child: Text(
                                          "Study",
                                          style: CustomTextStyles
                                              .titleLargeWhiteA700,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 36.v),
                          child: Text(
                            "Explore more skills",
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        Container(
                          width: 272.h,
                          margin: EdgeInsets.only(
                            left: 51.h,
                            top: 12.v,
                            right: 51.h,
                          ),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit enim, ac amet ultrices.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBluegray50013_2
                                .copyWith(
                              height: 1.69,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30.h, 117.v, 30.h, 5.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 21.v,
                                  bottom: 17.v,
                                ),
                                child: Text(
                                  "Skip",
                                  style: CustomTextStyles.titleSmallPrimary,
                                ),
                              ),
                              CustomIconButton(
                                height: 62.adaptSize,
                                width: 62.adaptSize,
                                padding: EdgeInsets.all(19.h),
                                decoration: IconButtonStyleHelper.fillPrimary,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowRightWhiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(
                          height: 439.v,
                          width: double.maxFinite,
                          child: Stack(
                            alignment: Alignment.center,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle953439x375,
                                height: 439.v,
                                width: 375.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  width: double.maxFinite,
                                  padding: EdgeInsets.symmetric(
                                    horizontal: 132.h,
                                    vertical: 38.v,
                                  ),
                                  decoration:
                                      AppDecoration.gradientBlueToPrimary,
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgUser,
                                        height: 34.adaptSize,
                                        width: 34.adaptSize,
                                        margin: EdgeInsets.only(
                                          top: 324.v,
                                          bottom: 2.v,
                                        ),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(top: 328.v),
                                        child: Text(
                                          "Study",
                                          style: CustomTextStyles
                                              .titleLargeWhiteA700Medium,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(top: 37.v),
                          child: Text(
                            "Find your favorite class",
                            style: theme.textTheme.headlineSmall,
                          ),
                        ),
                        Container(
                          width: 272.h,
                          margin: EdgeInsets.only(
                            left: 51.h,
                            top: 12.v,
                            right: 51.h,
                          ),
                          child: Text(
                            "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sit enim, ac amet ultrices.",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.center,
                            style: CustomTextStyles.bodyMediumBluegray50013_2
                                .copyWith(
                              height: 1.69,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.fromLTRB(30.h, 117.v, 30.h, 5.v),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Padding(
                                padding: EdgeInsets.only(
                                  top: 21.v,
                                  bottom: 17.v,
                                ),
                                child: Text(
                                  "Skip",
                                  style: CustomTextStyles.titleSmallPrimary,
                                ),
                              ),
                              CustomIconButton(
                                height: 62.adaptSize,
                                width: 62.adaptSize,
                                padding: EdgeInsets.all(19.h),
                                decoration: IconButtonStyleHelper.fillPrimary,
                                child: CustomImageView(
                                  imagePath:
                                      ImageConstant.imgArrowRightWhiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              SmoothPageIndicator(
                controller: pageController,
                count: 3,
                axisDirection: Axis.horizontal,
                effect: ScrollingDotsEffect(
                  spacing: 4.83,
                  activeDotColor: theme.colorScheme.primary,
                  dotColor: theme.colorScheme.primary.withOpacity(0.46),
                  activeDotScale: 2.0,
                  dotHeight: 4.v,
                  dotWidth: 4.h,
                ),
                onDotClicked: (value) {
                  pageController.jumpToPage(value);
                },
              ),
              SizedBox(height: 61.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 30.h),
                  child: Text(
                    "Skip",
                    style: CustomTextStyles.titleSmallPrimary,
                  ),
                ),
              ),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Common widget
  Widget _buildHeader(
    BuildContext context, {
    required String studyText,
  }) {
    return SizedBox(
      height: 440.v,
      width: double.maxFinite,
      child: Stack(
        alignment: Alignment.center,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle953,
            height: 440.v,
            width: 375.h,
            alignment: Alignment.center,
          ),
          Align(
            alignment: Alignment.center,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(
                horizontal: 132.h,
                vertical: 38.v,
              ),
              decoration: AppDecoration.gradientCyanToPrimary,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgUser,
                    height: 34.adaptSize,
                    width: 34.adaptSize,
                    margin: EdgeInsets.only(
                      top: 325.v,
                      bottom: 2.v,
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 329.v),
                    child: Text(
                      studyText,
                      style: CustomTextStyles.titleLargeWhiteA700.copyWith(
                        color: appTheme.whiteA700,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildOne(
    BuildContext context, {
    required String image,
    required String studyText,
    required String headlineText,
    required String bodyText,
    required String skipText,
    Function? onTapSkip,
  }) {
    return Column(
      children: [
        SizedBox(
          height: 439.v,
          width: double.maxFinite,
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: image,
                height: 439.v,
                width: 375.h,
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.center,
                child: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.symmetric(
                    horizontal: 132.h,
                    vertical: 38.v,
                  ),
                  decoration: AppDecoration.gradientBlueToPrimary,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgUser,
                        height: 34.adaptSize,
                        width: 34.adaptSize,
                        margin: EdgeInsets.only(
                          top: 324.v,
                          bottom: 2.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(top: 328.v),
                        child: Text(
                          studyText,
                          style: CustomTextStyles.titleLargeWhiteA700Medium
                              .copyWith(
                            color: appTheme.whiteA700,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 37.v),
        Text(
          headlineText,
          style: theme.textTheme.headlineSmall!.copyWith(
            color: appTheme.gray90002,
          ),
        ),
        SizedBox(height: 12.v),
        Container(
          width: 272.h,
          margin: EdgeInsets.symmetric(horizontal: 51.h),
          child: Text(
            bodyText,
            maxLines: 2,
            overflow: TextOverflow.ellipsis,
            textAlign: TextAlign.center,
            style: CustomTextStyles.bodyMediumBluegray50013_2.copyWith(
              color: appTheme.blueGray500,
              height: 1.69,
            ),
          ),
        ),
        SizedBox(height: 117.v),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 30.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              GestureDetector(
                onTap: () {
                  onTapSkip!.call();
                },
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 21.v,
                  bottom: 17.v,
                ),
                child: Text(
                  skipText,
                  style: CustomTextStyles.titleSmallPrimary.copyWith(
                    color: theme.colorScheme.primary,
                  ),
                ),
              ),
              CustomIconButton(
                height: 62.adaptSize,
                width: 62.adaptSize,
                padding: EdgeInsets.all(19.h),
                decoration: IconButtonStyleHelper.fillPrimary,
                child: CustomImageView(
                  imagePath: ImageConstant.imgArrowRightWhiteA700,
                ),
              ),
            ],
          ),
        ),
        SizedBox(height: 5.v),
      ],
    );
  }
}
