import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/app_bar/appbar_leading_image.dart';
import 'package:privatedu/widgets/app_bar/appbar_title_image.dart';
import 'package:privatedu/widgets/app_bar/appbar_trailing_image.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';
import 'package:privatedu/widgets/custom_icon_button.dart';
import 'package:privatedu/widgets/custom_text_form_field.dart';

class MessageTwoScreen extends StatelessWidget {
  MessageTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController messageController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 20.v),
            child: Padding(
              padding: EdgeInsets.only(left: 3.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: 51.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 6.h,
                        vertical: 1.v,
                      ),
                      decoration: AppDecoration.fillGray.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder6,
                      ),
                      child: Text(
                        "Today",
                        style: CustomTextStyles.labelLargeBlack900,
                      ),
                    ),
                  ),
                  SizedBox(height: 20.v),
                  _buildHelloJhonAbraham(context),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(left: 12.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 50.v),
                          child: CustomIconButton(
                            height: 49.adaptSize,
                            width: 49.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPlay,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 12.h,
                            top: 13.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jhon Abraham",
                                style: CustomTextStyles.titleSmallBlack900,
                              ),
                              SizedBox(height: 8.v),
                              Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  height: 36.v,
                                  width: 180.h,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgRectangle1131Gray100,
                                        height: 36.v,
                                        width: 180.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 7.v),
                                          child: Text(
                                            "Hello ! Nazrul How are you?",
                                            style: CustomTextStyles
                                                .bodySmallBlack900,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 5.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  "09:25 AM",
                                  style: theme.textTheme.labelMedium,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 27.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Container(
                      height: 36.v,
                      width: 145.h,
                      margin: EdgeInsets.only(right: 24.h),
                      child: Stack(
                        alignment: Alignment.bottomLeft,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle1131,
                            height: 36.v,
                            width: 145.h,
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.bottomLeft,
                            child: Padding(
                              padding: EdgeInsets.only(
                                left: 4.h,
                                bottom: 8.v,
                              ),
                              child: Text(
                                "You did your job well!",
                                style: CustomTextStyles.bodySmallWhiteA700,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  SizedBox(height: 5.v),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(right: 32.h),
                      child: Text(
                        "09:25 AM",
                        style: theme.textTheme.labelMedium,
                      ),
                    ),
                  ),
                  SizedBox(height: 16.v),
                  Padding(
                    padding: EdgeInsets.only(left: 16.h),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 76.v),
                          child: CustomIconButton(
                            height: 49.adaptSize,
                            width: 49.adaptSize,
                            padding: EdgeInsets.all(7.h),
                            child: CustomImageView(
                              imagePath: ImageConstant.imgPlay,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(
                            left: 8.h,
                            top: 13.v,
                          ),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Jhon Abraham",
                                style: CustomTextStyles.titleSmallBlack900,
                              ),
                              SizedBox(height: 8.v),
                              Align(
                                alignment: Alignment.centerRight,
                                child: SizedBox(
                                  height: 36.v,
                                  width: 184.h,
                                  child: Stack(
                                    alignment: Alignment.bottomRight,
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant
                                            .imgRectangle1131Gray100,
                                        height: 36.v,
                                        width: 184.h,
                                        alignment: Alignment.center,
                                      ),
                                      Align(
                                        alignment: Alignment.bottomRight,
                                        child: Padding(
                                          padding: EdgeInsets.only(bottom: 7.v),
                                          child: Text(
                                            "Have a great working week!!",
                                            style: CustomTextStyles
                                                .bodySmallBlack900,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              SizedBox(height: 10.v),
                              Container(
                                height: 36.v,
                                width: 112.h,
                                margin: EdgeInsets.only(left: 10.h),
                                child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    CustomImageView(
                                      imagePath:
                                          ImageConstant.imgRectangle1131Gray100,
                                      height: 36.v,
                                      width: 112.h,
                                      alignment: Alignment.center,
                                    ),
                                    Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Padding(
                                        padding: EdgeInsets.only(bottom: 8.v),
                                        child: Text(
                                          "Hope you like it",
                                          style: CustomTextStyles
                                              .bodySmallBlack900,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 140.v),
                  _buildNabBar(context),
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
      height: 80.v,
      leadingWidth: 47.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgBack,
        margin: EdgeInsets.only(
          left: 23.h,
          top: 31.v,
          bottom: 24.v,
        ),
      ),
      title: Padding(
        padding: EdgeInsets.only(left: 6.h),
        child: Row(
          children: [
            SizedBox(
              height: 49.839996.v,
              width: 49.h,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  CustomIconButton(
                    height: 49.adaptSize,
                    width: 49.adaptSize,
                    alignment: Alignment.centerLeft,
                    child: CustomImageView(
                      imagePath: ImageConstant.imgPlay,
                    ),
                  ),
                  Align(
                    alignment: Alignment.bottomCenter,
                    child: Container(
                      height: 8.adaptSize,
                      width: 8.adaptSize,
                      margin: EdgeInsets.only(
                        left: 41.h,
                        top: 41.v,
                      ),
                      decoration: BoxDecoration(
                        color: appTheme.greenA400,
                        borderRadius: BorderRadius.circular(
                          4.h,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            AppbarTitleImage(
              imagePath: ImageConstant.imgGroup50,
              margin: EdgeInsets.only(
                left: 13.h,
                top: 12.v,
                bottom: 8.v,
              ),
            ),
          ],
        ),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgCall,
          margin: EdgeInsets.only(
            left: 25.h,
            top: 31.v,
            right: 24.h,
          ),
        ),
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUpload,
          margin: EdgeInsets.only(
            left: 16.h,
            top: 31.v,
            right: 49.h,
          ),
        ),
      ],
      styleType: Style.bgShadow,
    );
  }

  /// Section Widget
  Widget _buildHelloJhonAbraham(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          SizedBox(
            height: 36.v,
            width: 141.h,
            child: Stack(
              alignment: Alignment.centerLeft,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgRectangle1131,
                  height: 36.v,
                  width: 141.h,
                  alignment: Alignment.center,
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text(
                      "Hello! Jhon abraham",
                      style: CustomTextStyles.bodySmallWhiteA700,
                    ),
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 5.v),
          Padding(
            padding: EdgeInsets.only(right: 8.h),
            child: Text(
              "09:25 AM",
              style: theme.textTheme.labelMedium,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildNabBar(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(21.h, 19.v, 21.h, 20.v),
      decoration: AppDecoration.outlineOnPrimaryContainer,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgAttach,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              left: 3.h,
              top: 8.v,
              bottom: 18.v,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(bottom: 10.v),
            child: CustomTextFormField(
              width: 216.h,
              controller: messageController,
              hintText: "Write your message",
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 8.v, 8.h, 8.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFiles,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 40.v,
              ),
              contentPadding: EdgeInsets.only(
                left: 12.h,
                top: 11.v,
                bottom: 11.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.fillGray,
              fillColor: appTheme.gray10001,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgCamera01,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 18.v,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgMicrophone,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 8.v,
              bottom: 18.v,
            ),
          ),
        ],
      ),
    );
  }
}
