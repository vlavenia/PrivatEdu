import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/presentation/account_and_setting_page/account_and_setting_page.dart';
import 'package:privatedu/presentation/homepage_one_page/homepage_one_page.dart';
import 'package:privatedu/presentation/message_one_tab_container_page/message_one_tab_container_page.dart';
import 'package:privatedu/presentation/my_bookings_one_tab_container_page/my_bookings_one_tab_container_page.dart';
import 'package:privatedu/widgets/app_bar/appbar_leading_image.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:privatedu/widgets/app_bar/appbar_trailing_image.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';
import 'package:privatedu/widgets/custom_bottom_bar.dart';
import 'package:privatedu/presentation/homepage_bottomsheet/homepage_bottomsheet.dart';

// ignore_for_file: must_be_immutable
class HomepageThreeScreen extends StatelessWidget {
  HomepageThreeScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 1.v),
                child: Column(children: [
                  SizedBox(height: 9.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.symmetric(horizontal: 24.h),
                              child: Column(children: [
                                _buildTen(context),
                                SizedBox(height: 26.v),
                                _buildTen1(context),
                                SizedBox(height: 26.v),
                                _buildTen2(context),
                                SizedBox(height: 26.v),
                                _buildTen3(context),
                                SizedBox(height: 26.v),
                                _buildTen4(context),
                                SizedBox(height: 26.v),
                                _buildTen5(context)
                              ]))))
                ])),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 48.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 15.v, bottom: 16.v)),
        centerTitle: true,
        title: AppbarSubtitleTwo(text: "SMP"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgMiFilter,
              margin: EdgeInsets.fromLTRB(27.h, 15.v, 27.h, 16.v),
              onTap: () {
                onTapMiFilter(context);
              })
        ]);
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        color: appTheme.whiteA700,
        shape: RoundedRectangleBorder(
            borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Container(
            height: 94.v,
            width: 327.h,
            decoration: AppDecoration.outlineGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Stack(alignment: Alignment.topRight, children: [
              Align(
                  alignment: Alignment.centerLeft,
                  child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: appTheme.orange50,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Container(
                          height: 94.v,
                          width: 97.h,
                          padding: EdgeInsets.symmetric(horizontal: 12.h),
                          decoration: AppDecoration.fillOrange.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                Align(
                                    alignment: Alignment.centerLeft,
                                    child: Container(
                                        height: 52.adaptSize,
                                        width: 52.adaptSize,
                                        margin: EdgeInsets.only(left: 9.h),
                                        decoration: BoxDecoration(
                                            color: appTheme.orangeA200Bf,
                                            borderRadius:
                                                BorderRadius.circular(26.h)))),
                                CustomImageView(
                                    imagePath: ImageConstant.imgFrame81,
                                    height: 79.v,
                                    width: 72.h,
                                    alignment: Alignment.bottomCenter)
                              ])))),
              Align(
                  alignment: Alignment.topRight,
                  child: Padding(
                      padding: EdgeInsets.only(top: 10.v, right: 55.h),
                      child: Text("Dr. Jenny Wilson",
                          style: theme.textTheme.titleMedium))),
              Align(
                  alignment: Alignment.center,
                  child: Card(
                      clipBehavior: Clip.antiAlias,
                      elevation: 0,
                      margin: EdgeInsets.all(0),
                      color: appTheme.whiteA700,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Container(
                          height: 94.v,
                          width: 327.h,
                          decoration: AppDecoration.outlineGray.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child:
                              Stack(alignment: Alignment.topRight, children: [
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: appTheme.orange50,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                    child: Container(
                                        height: 94.v,
                                        width: 97.h,
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 12.h),
                                        decoration: AppDecoration.fillOrange
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Stack(
                                            alignment: Alignment.bottomCenter,
                                            children: [
                                              Align(
                                                  alignment: Alignment
                                                      .centerLeft,
                                                  child: Container(
                                                      height: 52.adaptSize,
                                                      width: 52.adaptSize,
                                                      margin: EdgeInsets.only(
                                                          left: 9.h),
                                                      decoration: BoxDecoration(
                                                          color: appTheme
                                                              .orangeA200Bf,
                                                          borderRadius:
                                                              BorderRadius
                                                                  .circular(
                                                                      26.h)))),
                                              CustomImageView(
                                                  imagePath:
                                                      ImageConstant.imgFrame81,
                                                  height: 79.v,
                                                  width: 72.h,
                                                  alignment:
                                                      Alignment.bottomCenter)
                                            ])))),
                            Align(
                                alignment: Alignment.topRight,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(top: 18.v, right: 70.h),
                                    child: Text("Dr. Jenny Wilson",
                                        style: theme.textTheme.titleMedium))),
                            Align(
                                alignment: Alignment.center,
                                child: Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: EdgeInsets.all(0),
                                    color: appTheme.whiteA700,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                    child: Container(
                                        height: 94.v,
                                        width: 327.h,
                                        decoration: AppDecoration.outlineGray
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Stack(
                                            alignment: Alignment.topRight,
                                            children: [
                                              Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Card(
                                                      clipBehavior:
                                                          Clip.antiAlias,
                                                      elevation: 0,
                                                      margin: EdgeInsets.all(0),
                                                      color: appTheme.orange50,
                                                      shape: RoundedRectangleBorder(
                                                          borderRadius:
                                                              BorderRadiusStyle
                                                                  .roundedBorder16),
                                                      child: Container(
                                                          height: 94.v,
                                                          width: 97.h,
                                                          padding: EdgeInsets
                                                              .symmetric(
                                                                  horizontal:
                                                                      12.h),
                                                          decoration: AppDecoration
                                                              .fillOrange
                                                              .copyWith(
                                                                  borderRadius:
                                                                      BorderRadiusStyle
                                                                          .roundedBorder16),
                                                          child: Stack(
                                                              alignment: Alignment
                                                                  .bottomCenter,
                                                              children: [
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .centerLeft,
                                                                    child: Container(
                                                                        height: 52
                                                                            .adaptSize,
                                                                        width: 52
                                                                            .adaptSize,
                                                                        margin: EdgeInsets.only(
                                                                            left: 9
                                                                                .h),
                                                                        decoration: BoxDecoration(
                                                                            color:
                                                                                appTheme.orangeA200Bf,
                                                                            borderRadius: BorderRadius.circular(26.h)))),
                                                                CustomImageView(
                                                                    imagePath:
                                                                        ImageConstant
                                                                            .imgFrame81,
                                                                    height:
                                                                        79.v,
                                                                    width: 72.h,
                                                                    alignment:
                                                                        Alignment
                                                                            .bottomCenter)
                                                              ])))),
                                              Align(
                                                  alignment: Alignment.topRight,
                                                  child: Padding(
                                                      padding: EdgeInsets.only(
                                                          top: 18.v,
                                                          right: 70.h),
                                                      child: Text(
                                                          "Dr. Jenny Wilson",
                                                          style: theme.textTheme
                                                              .titleMedium))),
                                              Align(
                                                  alignment: Alignment.center,
                                                  child: Container(
                                                      decoration: AppDecoration
                                                          .outlineGray
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .roundedBorder16),
                                                      child: Row(children: [
                                                        Card(
                                                            clipBehavior: Clip
                                                                .antiAlias,
                                                            elevation: 0,
                                                            margin:
                                                                EdgeInsets.all(
                                                                    0),
                                                            color: appTheme
                                                                .orange50,
                                                            shape: RoundedRectangleBorder(
                                                                borderRadius:
                                                                    BorderRadiusStyle
                                                                        .roundedBorder16),
                                                            child: Container(
                                                                height: 94.v,
                                                                width: 97.h,
                                                                padding: EdgeInsets
                                                                    .symmetric(
                                                                        horizontal: 18
                                                                            .h,
                                                                        vertical: 16
                                                                            .v),
                                                                decoration: AppDecoration
                                                                    .fillOrange
                                                                    .copyWith(
                                                                        borderRadius:
                                                                            BorderRadiusStyle
                                                                                .roundedBorder16),
                                                                child: Stack(
                                                                    alignment:
                                                                        Alignment
                                                                            .topRight,
                                                                    children: [
                                                                      Align(
                                                                          alignment: Alignment
                                                                              .centerLeft,
                                                                          child: Container(
                                                                              height: 52.adaptSize,
                                                                              width: 52.adaptSize,
                                                                              margin: EdgeInsets.only(left: 2.h),
                                                                              decoration: BoxDecoration(color: appTheme.orangeA200Bf, borderRadius: BorderRadius.circular(26.h)))),
                                                                      CustomImageView(
                                                                          imagePath: ImageConstant
                                                                              .imgPlay,
                                                                          height: 55
                                                                              .adaptSize,
                                                                          width: 55
                                                                              .adaptSize,
                                                                          alignment:
                                                                              Alignment.topRight)
                                                                    ]))),
                                                        Padding(
                                                            padding:
                                                                EdgeInsets.only(
                                                                    left: 17.h,
                                                                    top: 16.v,
                                                                    bottom:
                                                                        23.v),
                                                            child: Column(
                                                                crossAxisAlignment:
                                                                    CrossAxisAlignment
                                                                        .start,
                                                                children: [
                                                                  Padding(
                                                                      padding: EdgeInsets.only(
                                                                          left: 6
                                                                              .h),
                                                                      child: Text(
                                                                          "Mrs. Desi Ramadha",
                                                                          style: theme
                                                                              .textTheme
                                                                              .titleMedium)),
                                                                  SizedBox(
                                                                      height:
                                                                          11.v),
                                                                  SizedBox(
                                                                      height:
                                                                          18.v,
                                                                      width:
                                                                          150.h,
                                                                      child: Stack(
                                                                          alignment:
                                                                              Alignment.center,
                                                                          children: [
                                                                            Align(
                                                                                alignment: Alignment.center,
                                                                                child: Text("Tamantirto, Kasihan. DIY", style: theme.textTheme.bodySmall)),
                                                                            Align(
                                                                                alignment: Alignment.center,
                                                                                child: Text("Tamantirto, Kasihan. DIY", style: theme.textTheme.bodySmall))
                                                                          ]))
                                                                ])),
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgArrowRight,
                                                            height:
                                                                16.adaptSize,
                                                            width: 16.adaptSize,
                                                            margin:
                                                                EdgeInsets.only(
                                                                    left: 11.h,
                                                                    top: 39.v,
                                                                    bottom:
                                                                        39.v))
                                                      ])))
                                            ]))))
                          ]))))
            ])));
  }

  /// Section Widget
  Widget _buildTen1(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(children: [
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.orange50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Container(
                  height: 94.v,
                  width: 97.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 19.h, vertical: 13.v),
                  decoration: AppDecoration.fillOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Stack(alignment: Alignment.bottomRight, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: 52.adaptSize,
                            width: 52.adaptSize,
                            margin: EdgeInsets.only(left: 1.h),
                            decoration: BoxDecoration(
                                color: appTheme.orangeA200Bf,
                                borderRadius: BorderRadius.circular(26.h)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgPlay,
                        height: 55.adaptSize,
                        width: 55.adaptSize,
                        alignment: Alignment.bottomRight)
                  ]))),
          Padding(
              padding: EdgeInsets.only(left: 17.h, top: 19.v, bottom: 23.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text("Mrs. Vega Lavenia",
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 9.v),
                    Text("Tamantirto, Kasihan. DIY",
                        style: theme.textTheme.bodySmall)
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 20.h, top: 39.v, bottom: 39.v))
        ]));
  }

  /// Section Widget
  Widget _buildTen2(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapTen(context);
        },
        child: Container(
            decoration: AppDecoration.outlineGray
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
            child: Row(children: [
              Card(
                  clipBehavior: Clip.antiAlias,
                  elevation: 0,
                  margin: EdgeInsets.all(0),
                  color: appTheme.orange50,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Container(
                      height: 94.v,
                      width: 97.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 18.v),
                      decoration: AppDecoration.fillOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16),
                      child: Stack(alignment: Alignment.center, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Container(
                                height: 52.adaptSize,
                                width: 52.adaptSize,
                                margin: EdgeInsets.only(left: 1.h),
                                decoration: BoxDecoration(
                                    color: appTheme.orangeA200Bf,
                                    borderRadius:
                                        BorderRadius.circular(26.h)))),
                        CustomImageView(
                            imagePath: ImageConstant.imgPlayGray90001,
                            height: 55.adaptSize,
                            width: 55.adaptSize,
                            alignment: Alignment.center)
                      ]))),
              Padding(
                  padding: EdgeInsets.only(left: 17.h, top: 18.v, bottom: 23.v),
                  child: _buildMrAndreDwiki(context,
                      dynamicText1: "Mr. Gerry Dwi ",
                      dynamicText2: "Tamantirto, Kasihan. DIY")),
              CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 28.h, top: 39.v, bottom: 39.v))
            ])));
  }

  /// Section Widget
  Widget _buildTen3(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(children: [
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.orange50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Container(
                  height: 94.v,
                  width: 97.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 18.v),
                  decoration: AppDecoration.fillOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Stack(alignment: Alignment.center, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: 52.adaptSize,
                            width: 52.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.orangeA200Bf,
                                borderRadius: BorderRadius.circular(26.h)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgPlayGray90001,
                        height: 55.adaptSize,
                        width: 55.adaptSize,
                        alignment: Alignment.center)
                  ]))),
          Padding(
              padding: EdgeInsets.only(left: 17.h, top: 16.v, bottom: 23.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text("Mr. Haneda Halim",
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 11.v),
                    Text("Tamantirto, Kasihan. DIY",
                        style: theme.textTheme.bodySmall)
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 23.h, top: 39.v, bottom: 39.v))
        ]));
  }

  /// Section Widget
  Widget _buildTen4(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(children: [
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.orange50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Container(
                  height: 94.v,
                  width: 97.h,
                  padding: EdgeInsets.all(18.h),
                  decoration: AppDecoration.fillOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Stack(alignment: Alignment.centerRight, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: 52.adaptSize,
                            width: 52.adaptSize,
                            margin: EdgeInsets.only(left: 2.h),
                            decoration: BoxDecoration(
                                color: appTheme.orangeA200Bf,
                                borderRadius: BorderRadius.circular(26.h)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgPlayGray90001,
                        height: 55.adaptSize,
                        width: 55.adaptSize,
                        alignment: Alignment.centerRight)
                  ]))),
          Padding(
              padding: EdgeInsets.only(left: 17.h, top: 16.v, bottom: 23.v),
              child: _buildMrAndreDwiki(context,
                  dynamicText1: "Mr. Andre Dwiki",
                  dynamicText2: "Tamantirto, Kasihan. DIY")),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 28.h, top: 39.v, bottom: 39.v))
        ]));
  }

  /// Section Widget
  Widget _buildTen5(BuildContext context) {
    return Container(
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(children: [
          Card(
              clipBehavior: Clip.antiAlias,
              elevation: 0,
              margin: EdgeInsets.all(0),
              color: appTheme.orange50,
              shape: RoundedRectangleBorder(
                  borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Container(
                  height: 94.v,
                  width: 97.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 13.v),
                  decoration: AppDecoration.fillOrange.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder16),
                  child: Stack(alignment: Alignment.bottomCenter, children: [
                    Align(
                        alignment: Alignment.centerLeft,
                        child: Container(
                            height: 52.adaptSize,
                            width: 52.adaptSize,
                            decoration: BoxDecoration(
                                color: appTheme.orangeA200Bf,
                                borderRadius: BorderRadius.circular(26.h)))),
                    CustomImageView(
                        imagePath: ImageConstant.imgPlay,
                        height: 55.adaptSize,
                        width: 55.adaptSize,
                        alignment: Alignment.bottomCenter)
                  ]))),
          Padding(
              padding: EdgeInsets.only(left: 17.h, top: 19.v, bottom: 23.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 6.h),
                        child: Text("Mrs. Kristin Angela",
                            style: theme.textTheme.titleMedium)),
                    SizedBox(height: 9.v),
                    Text("Tamantirto, Kasihan. DIY",
                        style: theme.textTheme.bodySmall)
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRight,
              height: 16.adaptSize,
              width: 16.adaptSize,
              margin: EdgeInsets.only(left: 18.h, top: 39.v, bottom: 39.v))
        ]));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  /// Common widget
  Widget _buildMrAndreDwiki(
    BuildContext context, {
    required String dynamicText1,
    required String dynamicText2,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 6.h),
          child: Text(dynamicText1,
              style: theme.textTheme.titleMedium!
                  .copyWith(color: appTheme.gray900))),
      SizedBox(height: 11.v),
      Text(dynamicText2,
          style: theme.textTheme.bodySmall!
              .copyWith(color: appTheme.gray900.withOpacity(0.65)))
    ]);
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Grid:
        return AppRoutes.homepageOnePage;
      case BottomBarEnum.Fisrcalendar:
        return AppRoutes.myBookingsOneTabContainerPage;
      case BottomBarEnum.Fisrcomment:
        return AppRoutes.messageOneTabContainerPage;
      case BottomBarEnum.Fisruser:
        return AppRoutes.accountAndSettingPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homepageOnePage:
        return HomepageOnePage();
      case AppRoutes.myBookingsOneTabContainerPage:
        return MyBookingsOneTabContainerPage();
      case AppRoutes.messageOneTabContainerPage:
        return MessageOneTabContainerPage();
      case AppRoutes.accountAndSettingPage:
        return AccountAndSettingPage();
      default:
        return DefaultWidget();
    }
  }

  /// Shows a modal bottom sheet with [HomepageBottomsheet]
  /// widget content.
  /// The sheet is displayed on top of the current view with scrolling enabled if
  /// content exceeds viewport height.
  onTapMiFilter(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => HomepageBottomsheet(),
        isScrollControlled: true);
  }

  /// Navigates to the detailMentorScreen when the action is triggered.
  onTapTen(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.detailMentorScreen);
  }
}
