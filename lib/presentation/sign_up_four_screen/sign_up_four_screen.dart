import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';

class SignUpFourScreen extends StatelessWidget {
  const SignUpFourScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(top: 77.v),
          child: Column(
            children: [
              SizedBox(height: 5.v),
              CustomImageView(
                imagePath: ImageConstant.imgSignUpCompletion,
                height: 542.v,
                width: 375.h,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
