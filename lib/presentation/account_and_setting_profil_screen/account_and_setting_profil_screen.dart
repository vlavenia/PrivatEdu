import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/app_bar/appbar_leading_image.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';
import 'package:privatedu/widgets/custom_elevated_button.dart';
import 'package:privatedu/widgets/custom_icon_button.dart';
import 'package:privatedu/widgets/custom_radio_button.dart';
import 'package:privatedu/widgets/custom_text_form_field.dart';
import 'package:privatedu/presentation/account_and_setting_profil_updated_dialog/account_and_setting_profil_updated_dialog.dart';

// ignore_for_file: must_be_immutable
class AccountAndSettingProfilScreen extends StatelessWidget {
  AccountAndSettingProfilScreen({Key? key}) : super(key: key);

  TextEditingController nameController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController dateOfBirthController = TextEditingController();

  TextEditingController phoneNumberController = TextEditingController();

  TextEditingController studentIDvalueController = TextEditingController();

  String gender = "";

  List<String> radioList = ["lbl_male", "lbl_female"];

  TextEditingController addressController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(children: [
                      SizedBox(height: 40.v),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding: EdgeInsets.only(
                                      left: 24.h, right: 24.h, bottom: 5.v),
                                  child: Column(children: [
                                    SizedBox(
                                        height: 80.v,
                                        width: 91.h,
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgWithOutlineMedium,
                                                  height: 80.adaptSize,
                                                  width: 80.adaptSize,
                                                  radius: BorderRadius.circular(
                                                      40.h),
                                                  alignment:
                                                      Alignment.centerLeft),
                                              Padding(
                                                  padding:
                                                      EdgeInsets.only(top: 6.v),
                                                  child: CustomIconButton(
                                                      height: 32.adaptSize,
                                                      width: 32.adaptSize,
                                                      padding:
                                                          EdgeInsets.all(8.h),
                                                      decoration:
                                                          IconButtonStyleHelper
                                                              .outlineWhiteA,
                                                      alignment:
                                                          Alignment.topRight,
                                                      child: CustomImageView(
                                                          imagePath: ImageConstant
                                                              .imgFiRrCamera)))
                                            ])),
                                    SizedBox(height: 41.v),
                                    _buildFormName(context),
                                    SizedBox(height: 16.v),
                                    _buildFormEmail(context),
                                    SizedBox(height: 16.v),
                                    _buildFormDateOfBirth(context),
                                    SizedBox(height: 17.v),
                                    _buildFormPhoneNumber(context),
                                    SizedBox(height: 17.v),
                                    _buildFormStudentID(context),
                                    SizedBox(height: 17.v),
                                    _buildFormGender(context),
                                    SizedBox(height: 17.v),
                                    _buildFormAddress(context)
                                  ]))))
                    ]))),
            bottomNavigationBar: _buildUpdateProfil(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 47.v,
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 11.v)),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "Profile"));
  }

  /// Section Widget
  Widget _buildFormName(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Name", style: theme.textTheme.bodyMedium),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: nameController, hintText: "Marvin McKinney")
    ]);
  }

  /// Section Widget
  Widget _buildFormEmail(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Email", style: theme.textTheme.bodyMedium),
      SizedBox(height: 9.v),
      CustomTextFormField(
          controller: emailController,
          hintText: "marvin@email.com",
          textInputType: TextInputType.emailAddress)
    ]);
  }

  /// Section Widget
  Widget _buildFormDateOfBirth(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Date of birth", style: theme.textTheme.bodyMedium),
      SizedBox(height: 9.v),
      CustomTextFormField(
          controller: dateOfBirthController, hintText: "11/08/1997")
    ]);
  }

  /// Section Widget
  Widget _buildFormPhoneNumber(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Phone Number", style: theme.textTheme.bodyMedium),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: phoneNumberController, hintText: "702-889-5347")
    ]);
  }

  /// Section Widget
  Widget _buildFormStudentID(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Student ID", style: theme.textTheme.bodyMedium),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: studentIDvalueController,
          hintText: "#87654",
          hintStyle: CustomTextStyles.bodyMediumBluegray500_1,
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL10,
          fillColor: appTheme.blueGray100.withOpacity(0.4))
    ]);
  }

  /// Section Widget
  Widget _buildFormGender(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Gender", style: theme.textTheme.bodyMedium),
      SizedBox(height: 8.v),
      Row(children: [
        CustomRadioButton(
            text: "Male",
            value: radioList[0],
            groupValue: gender,
            padding: EdgeInsets.fromLTRB(10.h, 11.v, 30.h, 11.v),
            onChange: (value) {
              gender = value;
            }),
        Padding(
            padding: EdgeInsets.only(left: 14.h),
            child: CustomRadioButton(
                text: "Female",
                value: radioList[1],
                groupValue: gender,
                padding: EdgeInsets.fromLTRB(10.h, 11.v, 30.h, 11.v),
                decoration: RadioStyleHelper.outlineBlueGrayTL10,
                onChange: (value) {
                  gender = value;
                }))
      ])
    ]);
  }

  /// Section Widget
  Widget _buildFormAddress(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text("Address", style: theme.textTheme.bodyMedium),
      SizedBox(height: 8.v),
      CustomTextFormField(
          controller: addressController,
          hintText: "1106 Sunrise Road Las Vegas, NV 89102",
          textInputAction: TextInputAction.done,
          maxLines: 4,
          borderDecoration: TextFormFieldStyleHelper.outlineBlueGrayTL101,
          fillColor: appTheme.gray10002)
    ]);
  }

  /// Section Widget
  Widget _buildUpdateProfil(BuildContext context) {
    return CustomElevatedButton(
        text: "Update Profil",
        margin: EdgeInsets.only(left: 24.h, right: 24.h, bottom: 26.v),
        onPressed: () {
          onTapUpdateProfil(context);
        });
  }

  /// Displays a dialog with the [AccountAndSettingProfilUpdatedDialog] content.
  onTapUpdateProfil(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => AlertDialog(
              content: AccountAndSettingProfilUpdatedDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: const EdgeInsets.only(left: 0),
            ));
  }
}
