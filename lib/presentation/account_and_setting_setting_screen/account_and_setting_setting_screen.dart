import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/app_bar/appbar_leading_image.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';

class AccountAndSettingSettingScreen extends StatelessWidget {
  const AccountAndSettingSettingScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 24.h,
            vertical: 23.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "About Us?",
                style: CustomTextStyles.titleMediumGray90002,
              ),
              SizedBox(height: 25.v),
              Container(
                width: 277.h,
                margin: EdgeInsets.only(right: 49.h),
                child: Text(
                  "Study is a  Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tellus ut sagittis libero augue interdum. ",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBluegray800.copyWith(
                    height: 1.69,
                  ),
                ),
              ),
              SizedBox(height: 21.v),
              Opacity(
                opacity: 0.3,
                child: Divider(
                  color: appTheme.blueGray100.withOpacity(0.46),
                ),
              ),
              SizedBox(height: 26.v),
              Text(
                "Lorem Ipsum",
                style: CustomTextStyles.titleSmallSemiBold,
              ),
              SizedBox(height: 18.v),
              Container(
                width: 299.h,
                margin: EdgeInsets.only(
                  left: 7.h,
                  right: 20.h,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tellus ut sagittis libero augue interdum. ",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBluegray800.copyWith(
                    height: 1.69,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              Container(
                width: 299.h,
                margin: EdgeInsets.only(
                  left: 7.h,
                  right: 20.h,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tellus ut sagittis libero augue interdum. ",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBluegray800.copyWith(
                    height: 1.69,
                  ),
                ),
              ),
              SizedBox(height: 18.v),
              Container(
                width: 299.h,
                margin: EdgeInsets.only(
                  left: 7.h,
                  right: 20.h,
                ),
                child: Text(
                  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Morbi tellus ut sagittis libero augue interdum. ",
                  maxLines: 3,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyMediumBluegray800.copyWith(
                    height: 1.69,
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

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 47.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 12.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "About Us",
      ),
    );
  }
}
