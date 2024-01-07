import 'package:flutter/material.dart';
import 'package:privatedu/core.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class Subjects1ItemWidget extends StatelessWidget {
  String title;
  Color coloricon;
  String image;
  BoxDecoration colorbackground;


  Subjects1ItemWidget(this.title, this.coloricon, this.image, this.colorbackground, {
    Key? key,
    this.onTapSubjects,
  }) : super(
          key: key,
        );

  VoidCallback? onTapSubjects;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 2050,
      child: Wrap(
        
              direction: Axis.vertical,
      children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
                children: [
                  GestureDetector(
                    onTap: (){
                      HomepageOnePage();
                    },
                    child: Container(
                    height: 68.adaptSize,
                    width: 68.adaptSize,
                    padding: EdgeInsets.all(16.h),
                    decoration: colorbackground,
                    child: CustomImageView(
                      imagePath: image,
                      color: coloricon,
                    ),
                                  ),
                  ),
                SizedBox(height: 13.v),
                Text(
                  title,
                   maxLines: 1,
                   textAlign: TextAlign.center,
                  style: theme.textTheme.labelLarge,
                ),
                ],
              ),
          ),
              
            ],
      ),
    );
  }
}
