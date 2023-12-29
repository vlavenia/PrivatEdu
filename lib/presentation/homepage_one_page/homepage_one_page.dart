import 'package:privatedu/presentation/homepage_two_screen/homepage_two_screen.dart';

import '../homepage_one_page/widgets/subjects_item_widget.dart';
import '../homepage_one_page/widgets/userprofile_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle_five.dart';
import 'package:privatedu/widgets/app_bar/appbar_title.dart';
import 'package:privatedu/widgets/app_bar/appbar_trailing_image.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';
import 'package:privatedu/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class HomepageOnePage extends StatelessWidget {
  HomepageOnePage({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.only(right: 9.h),
                              child: CustomSearchView(
                                  controller: searchController,
                                  hintText: "Search Course, Mentor, etc")),
                          SizedBox(height: 16.v),
                          _buildEducation(context),
                          SizedBox(height: 28.v),
                          _buildMentor(context),
                          SizedBox(height: 16.v),
                          _buildUserProfile(context),
                          SizedBox(height: 21.v),
                          _buildYourSchedule(context)
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        title: Padding(
            padding: EdgeInsets.only(left: 23.h),
            child: Column(children: [
              AppbarTitle(
                  text: "Hi, Jenny Wilson",
                  margin: EdgeInsets.only(right: 6.h)),
              SizedBox(height: 1.v),
              AppbarSubtitleFive(text: "Here is your Course today ")
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgVector,
              margin: EdgeInsets.fromLTRB(40.h, 2.v, 40.h, 28.v))
        ]);
  }

  /// Section Widget
  Widget _buildEducation(BuildContext context) {
    
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(right: 22.h),
          child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Expanded(
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                  Text("Education",
                      style: CustomTextStyles.headlineSmallGray90003),
                  SizedBox(height: 4.v),
                  Text("Please select your educational level",
                      style: CustomTextStyles.titleSmallBluegray20001)
                ])),
            GestureDetector(
                onTap: () {
                  Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => HomepageTwoScreen()),
                  );
                },
                child: Padding(
                    padding:
                        EdgeInsets.only(left: 30.h, top: 9.v, bottom: 31.v),
                    child: Text("View all",
                        style: CustomTextStyles.labelLargeBluegray500)))
          ])),
      SizedBox(height: 22.v),
      Align(
          alignment: Alignment.centerRight,
          child: SizedBox(
              height: 101.v,
              child: ListView.separated(
                  padding: EdgeInsets.only(left: 5.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 38.h);
                  },
                  itemCount: 1,
                  itemBuilder: (context, index) {
                    return SubjectsItemWidget(onTapSubjects: () {
                      onTapSubjects(context);
                    });
                  })))
    ]);
  }

  /// Section Widget
  Widget _buildMentor(BuildContext context) {
    return Align(
        alignment: Alignment.centerLeft,
        child: Padding(
            padding: EdgeInsets.only(right: 24.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Mentor",
                            style: CustomTextStyles.headlineSmallGray90003),
                        SizedBox(height: 1.v),
                        Text("what dou want to learn",
                            style: CustomTextStyles.titleSmallBluegray20001)
                      ]),
                  Padding(
                      padding: EdgeInsets.only(top: 11.v, bottom: 27.v),
                      child: Text("View all",
                          style: CustomTextStyles.labelLargeBluegray500))
                ])));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return SizedBox(
        height: 119.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return UserprofileItemWidget();
            }));
  }

  /// Section Widget
  Widget _buildList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 19.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("Next lessons", style: CustomTextStyles.titleSmallBluegray20001),
          SizedBox(height: 16.v),
          Container(
              margin: EdgeInsets.only(right: 13.h),
              decoration: AppDecoration.fillTeal
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder32),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 20.h, top: 21.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("Biology",
                                  style: CustomTextStyles.titleMediumWhiteA700),
                              SizedBox(height: 3.v),
                              Text("Chapter 3: Animal Kingdom",
                                  style: CustomTextStyles.labelLargeWhiteA700),
                              SizedBox(height: 10.v),
                              Padding(
                                  padding: EdgeInsets.only(left: 26.h),
                                  child: Text("Room 2-168",
                                      style: CustomTextStyles
                                          .bodySmallWhiteA700_1)),
                              CustomImageView(
                                  imagePath: ImageConstant.imgLocationPoint2,
                                  height: 5.v,
                                  width: 16.h,
                                  radius: BorderRadius.circular(2.h))
                            ])),
                    Container(
                        height: 73.v,
                        width: 103.h,
                        margin: EdgeInsets.only(left: 30.h, bottom: 14.v),
                        padding: EdgeInsets.symmetric(
                            horizontal: 16.h, vertical: 21.v),
                        decoration: BoxDecoration(
                            borderRadius: BorderRadiusStyle.roundedBorder32,
                            image: DecorationImage(
                                image: AssetImage(ImageConstant.imgGroup29),
                                fit: BoxFit.cover)),
                        child: CustomImageView(
                            imagePath: ImageConstant.imgEllipsisV2,
                            height: 24.adaptSize,
                            width: 24.adaptSize,
                            radius: BorderRadius.circular(12.h),
                            alignment: Alignment.topRight))
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildYourSchedule(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 3.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 1.h, right: 19.h),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Your Schedule",
                        style: CustomTextStyles.headlineSmallGray90003),
                    Padding(
                        padding: EdgeInsets.only(top: 5.v, bottom: 10.v),
                        child: Text("View all",
                            style: CustomTextStyles.labelLargeBluegray500))
                  ])),
          SizedBox(height: 31.v),
          _buildList(context)
        ]));
  }

  /// Navigates to the homepageTwoScreen when the action is triggered.
  onTapSubjects(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageTwoScreen);
  }

  /// Navigates to the homepageTwoScreen when the action is triggered.
  
}
