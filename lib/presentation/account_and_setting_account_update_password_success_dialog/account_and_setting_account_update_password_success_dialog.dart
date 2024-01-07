import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/presentation/account_and_setting_account_screen/account_and_setting_account_screen.dart';
import 'package:privatedu/presentation/account_and_setting_page/account_and_setting_page.dart';
import 'package:privatedu/presentation/account_and_setting_page/container_screen/account_and_setting_page_container_screen.dart';
import 'package:privatedu/presentation/homepage_one_container_screen/homepage_one_container_screen.dart';
import 'package:privatedu/widgets/custom_outlined_button.dart';

// ignore_for_file: must_be_immutable
class AccountAndSettingAccountUpdatePasswordSuccessDialog
    extends StatelessWidget {
  const AccountAndSettingAccountUpdatePasswordSuccessDialog({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 343.h,
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder25,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 6.v),
          CustomImageView(
            imagePath: ImageConstant.imgGroup5305Blue200,
            height: 147.v,
            width: 159.h,
          ),
          SizedBox(height: 25.v),
          Text(
            "Password Updated",
            style: theme.textTheme.titleLarge,
          ),
          SizedBox(height: 12.v),
          Opacity(
            opacity: 0.8,
            child: Container(
              width: 269.h,
              margin: EdgeInsets.symmetric(horizontal: 16.h),
              child: Text(
                "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fames velit ",
                maxLines: 2,
                overflow: TextOverflow.ellipsis,
                textAlign: TextAlign.center,
                style: CustomTextStyles.bodyMediumBluegray50013.copyWith(
                  height: 1.69,
                ),
              ),
            ),
          ),
          SizedBox(height: 17.v),
          CustomOutlinedButton(
            text: "Close",
            onPressed: () {
              Navigator.pushReplacement(
                context,
                MaterialPageRoute(
                    builder: (context) => HomepageOneContainerScreen()),
              );
            },
          ),
        ],
      ),
    );
  }
}
