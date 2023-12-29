import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';

class HomepageBottomsheet extends StatelessWidget {
  const HomepageBottomsheet({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return _buildScrollView(context);
  }

  /// Section Widget
  Widget _buildScrollView(BuildContext context) {
    return SingleChildScrollView(
        child: GestureDetector(
            onTap: () {
              onTapPopupFilter(context);
            },
            child: Container(
                margin: EdgeInsets.only(bottom: 16.v),
                padding:
                    EdgeInsets.symmetric(horizontal: 105.h, vertical: 27.v),
                decoration: AppDecoration.fillWhiteA
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(width: 101.h, child: Divider(indent: 51.h)),
                      SizedBox(height: 17.v),
                      Text("Choose your filter",
                          style: CustomTextStyles.titleMediumGray9000217),
                      SizedBox(height: 83.v)
                    ]))));
  }

  /// Navigates to the homepageThreeScreen when the action is triggered.
  onTapPopupFilter(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageThreeScreen);
  }
}
