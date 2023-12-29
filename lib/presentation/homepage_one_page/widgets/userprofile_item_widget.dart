import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  const UserprofileItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 149.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.deepOrange400,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Container(
          height: 119.v,
          width: 149.h,
          decoration: AppDecoration.fillDeepOrange.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Stack(
            alignment: Alignment.center,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgUserOrange200,
                height: 60.v,
                width: 75.h,
                alignment: Alignment.topRight,
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 16.h,
                    right: 12.h,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          CustomImageView(
                            imagePath:
                                ImageConstant.imgSquareRootOfXMathFormula,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgEllipsisV2,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                          ),
                        ],
                      ),
                      SizedBox(height: 38.v),
                      Text(
                        "Mathematics",
                        style: CustomTextStyles.titleMediumWhiteA700,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
