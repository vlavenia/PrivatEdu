import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/custom_icon_button.dart';

class MessageOnePage extends StatefulWidget {
  const MessageOnePage({Key? key}) : super(key: key);

  @override
  MessageOnePageState createState() => MessageOnePageState();
}

class MessageOnePageState extends State<MessageOnePage>
    with AutomaticKeepAliveClientMixin<MessageOnePage> {
  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 22.v),
                  _buildViewStack(context)
                ])))));
  }

  /// Section Widget
  Widget _buildViewStack(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 24.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(
                  height: 49.v,
                  width: 51.h,
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: 49.adaptSize,
                            width: 49.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.orange50,
                                borderRadius: BorderRadius.circular(15.h)))),
                    CustomIconButton(
                        height: 49.adaptSize,
                        width: 49.adaptSize,
                        padding: EdgeInsets.all(7.h),
                        alignment: Alignment.center,
                        child:
                            CustomImageView(imagePath: ImageConstant.imgPlay))
                  ])),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, top: 6.v, bottom: 4.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        GestureDetector(
                            onTap: () {
                              onTapTxtDeveshOjha(context);
                            },
                            child: Text("Devesh Ojha",
                                style: CustomTextStyles.titleMediumOnPrimary)),
                        GestureDetector(
                            onTap: () {
                              onTapTxtHello(context);
                            },
                            child: Text("Hello",
                                style: CustomTextStyles.bodySmallOnPrimary))
                      ])),
              Spacer(),
              GestureDetector(
                  onTap: () {
                    onTapTxtTime(context);
                  },
                  child: Padding(
                      padding: EdgeInsets.only(top: 6.v, bottom: 21.v),
                      child: Text("18:44",
                          style: CustomTextStyles.bodyMediumOnPrimary)))
            ]));
  }

  /// Navigates to the messageTwoScreen when the action is triggered.
  onTapTxtDeveshOjha(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.messageTwoScreen);
  }

  /// Navigates to the messageTwoScreen when the action is triggered.
  onTapTxtHello(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.messageTwoScreen);
  }

  /// Navigates to the messageTwoScreen when the action is triggered.
  onTapTxtTime(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.messageTwoScreen);
  }
}
