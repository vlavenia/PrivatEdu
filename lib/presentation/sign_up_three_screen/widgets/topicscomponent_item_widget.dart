import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class TopicscomponentItemWidget extends StatelessWidget {
  const TopicscomponentItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        CustomIconButton(
          height: 50.adaptSize,
          width: 50.adaptSize,
          padding: EdgeInsets.all(13.h),
          decoration: IconButtonStyleHelper.fillPink,
          child: CustomImageView(
            imagePath: ImageConstant.imgFiSrSquareRoot,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 12.h,
            top: 2.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "Mathematics",
                style: theme.textTheme.bodyLarge,
              ),
              SizedBox(height: 2.v),
              Opacity(
                opacity: 0.5,
                child: Text(
                  "Geometry, Algorithm",
                  style: CustomTextStyles.bodyMediumBluegray50013_1,
                ),
              ),
            ],
          ),
        ),
        Spacer(),
        Container(
          height: 32.adaptSize,
          width: 32.adaptSize,
          margin: EdgeInsets.symmetric(vertical: 9.v),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              CustomIconButton(
                height: 32.adaptSize,
                width: 32.adaptSize,
                padding: EdgeInsets.all(9.h),
                decoration: IconButtonStyleHelper.fillIndigo,
                alignment: Alignment.center,
                child: CustomImageView(
                  imagePath: ImageConstant.imgCheckmarkWhiteA700,
                ),
              ),
              CustomImageView(
                imagePath: ImageConstant.imgCheckmarkWhiteA700,
                height: 10.adaptSize,
                width: 10.adaptSize,
                alignment: Alignment.topCenter,
                margin: EdgeInsets.only(top: 9.v),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
