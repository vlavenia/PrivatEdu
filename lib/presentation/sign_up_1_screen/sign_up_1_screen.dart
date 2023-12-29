import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/app_bar/appbar_leading_image.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';
import 'package:privatedu/widgets/custom_checkbox_button.dart';
import 'package:privatedu/widgets/custom_elevated_button.dart';
import 'package:privatedu/widgets/custom_text_form_field.dart';
import 'package:privatedu/presentation/sign_up_two_dialog/sign_up_two_dialog.dart';

// ignore_for_file: must_be_immutable
class SignUp1Screen extends StatelessWidget {
  SignUp1Screen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  bool checkBox = false;

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
                    padding:
                        EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.v),
                    child: Column(children: [
                      _buildForm1(context),
                      SizedBox(height: 16.v),
                      _buildForm2(context),
                      SizedBox(height: 17.v),
                      _buildForm3(context),
                      SizedBox(height: 17.v),
                      _buildForm4(context),
                      SizedBox(height: 24.v),
                      _buildCheckBox(context),
                      SizedBox(height: 5.v)
                    ]))),
            bottomNavigationBar: _buildSignUpButton(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 50.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 14.v)),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "Sign up"));
  }

  /// Section Widget
  Widget _buildForm1(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Name", style: theme.textTheme.bodyMedium),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: nameController,
          hintText: "Your name",
          hintStyle: CustomTextStyles.bodyMediumBluegray500_1)
    ]);
  }

  /// Section Widget
  Widget _buildForm2(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email", style: theme.textTheme.bodyMedium),
      SizedBox(height: 9.v),
      CustomTextFormField(
          controller: emailController,
          hintText: "study@email.com",
          hintStyle: CustomTextStyles.bodyMediumBluegray500_1,
          textInputType: TextInputType.emailAddress)
    ]);
  }

  /// Section Widget
  Widget _buildForm3(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Password", style: theme.textTheme.bodyMedium),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: passwordController,
          hintText: "Your password",
          hintStyle: CustomTextStyles.bodyMediumBluegray500_1,
          textInputType: TextInputType.visiblePassword,
          obscureText: true)
    ]);
  }

  /// Section Widget
  Widget _buildForm4(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Phone Number", style: theme.textTheme.bodyMedium),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: phoneNumberController,
          hintText: "0334 xxxx xxxx",
          hintStyle: CustomTextStyles.bodyMediumBluegray500_1,
          textInputAction: TextInputAction.done)
    ]);
  }

  /// Section Widget
  Widget _buildCheckBox(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 9.h),
        child: CustomCheckboxButton(
            text:
                "I agree with the terms and conditions and also the protection of my personal data on this application",
            isExpandedText: true,
            value: checkBox,
            onChange: (value) {
              checkBox = value;
            }));
  }

  /// Section Widget
  Widget _buildSignUpButton(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 50.v),
        onPressed: () {
          onTapSignUpButton(context);
        });
  }

  /// Displays a dialog with the [SignUpTwoDialog] content.
  onTapSignUpButton(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: SignUpTwoDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
