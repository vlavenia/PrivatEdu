import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class CourseFilterCalendarModelBottomsheet extends StatelessWidget {
  CourseFilterCalendarModelBottomsheet({Key? key})
      : super(
          key: key,
        );

  TextEditingController seeAllCourseController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return _buildPopupFilter(context);
  }

  /// Section Widget
  Widget _buildPopupFilter(BuildContext context) {
    return SingleChildScrollView(
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 13.v,
        ),
        decoration: AppDecoration.fillWhiteA.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder32,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            SizedBox(
              width: 50.h,
              child: Divider(),
            ),
            SizedBox(height: 17.v),
            Text(
              "Choose your filter",
              style: CustomTextStyles.titleMediumGray9000217,
            ),
            SizedBox(height: 12.v),
            CustomTextFormField(
              controller: seeAllCourseController,
              hintText: "See all course",
              hintStyle: CustomTextStyles.titleSmallIndigo400,
              textInputAction: TextInputAction.done,
              suffix: Container(
                margin: EdgeInsets.fromLTRB(30.h, 17.v, 16.h, 16.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgFirrcheck,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 49.v,
              ),
              contentPadding: EdgeInsets.only(
                left: 16.h,
                top: 13.v,
                bottom: 13.v,
              ),
              borderDecoration: TextFormFieldStyleHelper.fillIndigo,
              fillColor: appTheme.indigo400,
            ),
            SizedBox(height: 10.v),
            Container(
              width: 327.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Text(
                    "Ongoing course",
                    style: CustomTextStyles.bodyMediumBluegray500_1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 4.v),
            Container(
              width: 327.h,
              padding: EdgeInsets.symmetric(
                horizontal: 16.h,
                vertical: 11.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder25,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 3.v),
                  Text(
                    "Completed course",
                    style: CustomTextStyles.bodyMediumBluegray500_1,
                  ),
                ],
              ),
            ),
            SizedBox(height: 40.v),
          ],
        ),
      ),
    );
  }
}
