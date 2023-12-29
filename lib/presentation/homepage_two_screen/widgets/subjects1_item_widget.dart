import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Subjects1ItemWidget extends StatelessWidget {
  Subjects1ItemWidget({
    Key? key,
    this.onTapSubjects,
  }) : super(
          key: key,
        );

  VoidCallback? onTapSubjects;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.centerLeft,
      child: GestureDetector(
        onTap: () {
          onTapSubjects!.call();
        },
        child: Column(
          children: [
            CustomIconButton(
              height: 68.adaptSize,
              width: 68.adaptSize,
              padding: EdgeInsets.all(16.h),
              decoration: IconButtonStyleHelper.fillPink,
              child: CustomImageView(
                imagePath: ImageConstant.imgSearch,
              ),
            ),
            SizedBox(height: 13.v),
            Text(
              "TK",
              style: theme.textTheme.labelLarge,
            ),
          ],
        ),
      ),
    );
  }
}
