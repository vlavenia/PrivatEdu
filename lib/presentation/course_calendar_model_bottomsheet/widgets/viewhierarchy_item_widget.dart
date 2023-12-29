import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class ViewhierarchyItemWidget extends StatelessWidget {
  const ViewhierarchyItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Padding(
          padding: EdgeInsets.only(
            top: 5.v,
            bottom: 8.v,
          ),
          child: CustomIconButton(
            height: 32.adaptSize,
            width: 32.adaptSize,
            padding: EdgeInsets.all(8.h),
            decoration: IconButtonStyleHelper.fillTealTL16,
            child: CustomImageView(
              imagePath: ImageConstant.imgBoldBook,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 12.h),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Biology",
                style: CustomTextStyles.titleSmallBluegray800,
              ),
              SizedBox(height: 4.v),
              Text(
                "Mrs. Desi Ramdhani",
                style: CustomTextStyles.bodySmallBluegray500,
              ),
            ],
          ),
        ),
        Spacer(),
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 17.v,
          ),
          child: Text(
            "09:00",
            style: CustomTextStyles.bodyMediumBluegray50013_2,
          ),
        ),
      ],
    );
  }
}
