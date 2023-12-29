import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class SubjectsItemWidget extends StatelessWidget {
  SubjectsItemWidget({
    Key? key,
    this.onTapSubjects,
  }) : super(
          key: key,
        );

  VoidCallback? onTapSubjects;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: MediaQuery.of(context).size.width,
      child: Align(
        alignment: Alignment.centerRight,
        child: GestureDetector(
          onTap: () {
            onTapSubjects!.call();
          },
          child: Row(
            children: [
              Column(
                children: [
                    CustomIconButton(
                height: 68.adaptSize,
                width: 68.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.lightbrown,
                child: CustomImageView(
                  imagePath: 'assets/icon/education/tk.png',
                  color: Color.fromARGB(255, 111, 68, 57),
                ),
              ),
              SizedBox(height: 13.v),
              Text(
                "TK",
                style: theme.textTheme.labelLarge,
              ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                children: [
                    CustomIconButton(
                height: 68.adaptSize,
                width: 68.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.lightorange,
                child: CustomImageView(
                 imagePath: 'assets/icon/education/sd.png',
                  color: Color.fromARGB(255, 213, 47, 47),
                ),
              ),
              SizedBox(height: 13.v),
              Text(
                "SD",
                style: theme.textTheme.labelLarge,
              ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                children: [
                    CustomIconButton(
                height: 68.adaptSize,
                width: 68.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.lightblue,
                child: CustomImageView(
                  imagePath: 'assets/icon/education/smp.png',
                   color: Color.fromARGB(255, 86, 103, 253),
                ),
              ),
              SizedBox(height: 13.v),
              Text(
                "SMP",
                style: theme.textTheme.labelLarge,
              ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
              Column(
                children: [
                    CustomIconButton(
                height: 68.adaptSize,
                width: 68.adaptSize,
                padding: EdgeInsets.all(15.h),
                decoration: IconButtonStyleHelper.fillPink,
                child: CustomImageView(
                  imagePath: ImageConstant.imgSearch,
                ),
              ),
              SizedBox(height: 13.v),
              Text(
                "SMA",
                style: theme.textTheme.labelLarge,
              ),
                ],
              ),
              SizedBox(
                width: 25,
              ),
             
            
             
            ],
          ),
        ),
      ),
    );
  }
}
