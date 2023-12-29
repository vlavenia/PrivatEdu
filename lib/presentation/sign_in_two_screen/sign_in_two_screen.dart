import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/app_bar/appbar_leading_image.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';
import 'package:privatedu/widgets/custom_elevated_button.dart';
import 'package:privatedu/widgets/custom_text_form_field.dart';

class SignInTwoScreen extends StatelessWidget {
  SignInTwoScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: Form(
          key: _formKey,
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(
              horizontal: 24.h,
              vertical: 22.v,
            ),
            child: Column(
              children: [
                _buildFormColumn1(context),
                SizedBox(height: 16.v),
                _buildFormColumn2(context),
                SizedBox(height: 18.v),
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                    "Forgot Password?",
                    style: CustomTextStyles.bodyMediumIndigo400,
                  ),
                ),
                SizedBox(height: 29.v),
                CustomElevatedButton(
                  text: "Log In",
                ),
                SizedBox(height: 26.v),
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "Don’t have an account? ",
                        style: CustomTextStyles.labelLargeBluegray800,
                      ),
                      TextSpan(
                        text: "Sign Up",
                        style: CustomTextStyles.labelLargeIndigo400_1,
                      ),
                    ],
                  ),
                  textAlign: TextAlign.left,
                ),
                SizedBox(height: 5.v),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 50.v,
      leadingWidth: 48.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 24.h,
          top: 12.v,
          bottom: 14.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "Sign In",
      ),
    );
  }

  /// Section Widget
  Widget _buildFormColumn1(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Email",
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 9.v),
        CustomTextFormField(
          controller: emailController,
          hintText: "lanlordjones@email.com",
          textInputType: TextInputType.emailAddress,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildFormColumn2(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Password",
          style: theme.textTheme.bodyMedium,
        ),
        SizedBox(height: 8.v),
        CustomTextFormField(
          controller: passwordController,
          textInputAction: TextInputAction.done,
          obscureText: true,
        ),
      ],
    );
  }
}
