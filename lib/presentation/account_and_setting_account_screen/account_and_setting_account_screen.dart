import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/app_bar/appbar_leading_image.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';
import 'package:privatedu/widgets/custom_elevated_button.dart';
import 'package:privatedu/widgets/custom_text_form_field.dart';
import 'package:privatedu/presentation/account_and_setting_account_update_password_success_dialog/account_and_setting_account_update_password_success_dialog.dart';

// ignore_for_file: must_be_immutable
class AccountAndSettingAccountScreen extends StatelessWidget {
  AccountAndSettingAccountScreen({Key? key}) : super(key: key);

  TextEditingController passwordController = TextEditingController();

  TextEditingController newpasswordController = TextEditingController();

  TextEditingController confirmpasswordController = TextEditingController();

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
                    padding: EdgeInsets.all(24.h),
                    child: Column(children: [
                      _buildPasswordForm(context),
                      SizedBox(height: 17.v),
                      _buildNewPasswordForm(context),
                      SizedBox(height: 16.v),
                      _buildConfirmPasswordForm(context),
                      SizedBox(height: 24.v),
                      CustomElevatedButton(
                          text: "Update Password",
                          onPressed: () {
                            onTapUpdatePassword(context);
                          }),
                      SizedBox(height: 5.v)
                    ])))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 48.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v)),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "Account"));
  }

  /// Section Widget
  Widget _buildPasswordForm(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Old Password", style: theme.textTheme.bodyMedium),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: passwordController,
          hintText: "Old password",
          hintStyle: CustomTextStyles.bodyMediumBluegray500_1,
          textInputType: TextInputType.visiblePassword,
          obscureText: true)
    ]);
  }

  /// Section Widget
  Widget _buildNewPasswordForm(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("New Password", style: theme.textTheme.bodyMedium),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: newpasswordController,
          hintText: "New password",
          hintStyle: CustomTextStyles.bodyMediumBluegray500_1,
          textInputType: TextInputType.visiblePassword,
          obscureText: true)
    ]);
  }

  /// Section Widget
  Widget _buildConfirmPasswordForm(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Confirm Password", style: theme.textTheme.bodyMedium),
      SizedBox(height: 9.v),
      CustomTextFormField(
          controller: confirmpasswordController,
          hintText: "Confirm password",
          hintStyle: CustomTextStyles.bodyMediumBluegray500_1,
          textInputAction: TextInputAction.done,
          textInputType: TextInputType.visiblePassword,
          obscureText: true)
    ]);
  }

  /// Displays a dialog with the [AccountAndSettingAccountUpdatePasswordSuccessDialog] content.
  onTapUpdatePassword(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: AccountAndSettingAccountUpdatePasswordSuccessDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
