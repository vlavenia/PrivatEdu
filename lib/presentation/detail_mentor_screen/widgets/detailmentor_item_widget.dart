import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';

// ignore: must_be_immutable
class DetailmentorItemWidget extends StatelessWidget {
  const DetailmentorItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 16.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineGray.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      width: 59.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "14",
            style: CustomTextStyles.titleMediumErrorContainer_1,
          ),
          Text(
            "Sun",
            style: CustomTextStyles.bodyMediumGray900,
          ),
        ],
      ),
    );
  }
}
