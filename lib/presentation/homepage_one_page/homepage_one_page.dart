import 'package:privatedu/presentation/homepage_two_screen/homepage_two_screen.dart';

import '../homepage_one_page/widgets/subjects_item_widget.dart';
import 'widgets/userprofile_item_widget.dart';
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
                    padding: EdgeInsets.only(top: 19.v),
                    child: Padding(
                        padding: EdgeInsets.only(left: 18.h),
                        child: Column(children: [
                          Padding(
                              padding: EdgeInsets.only(right: 9.h),
                              child: CustomSearchView(
                                  controller: searchController,
                                  autofocus:false,
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
            padding: EdgeInsets.only(left: 23.h,top: 15),
            child: Column(children: [
              AppbarTitle(
                  text: "Hi, Jenny Wilson",
                  margin: EdgeInsets.only(right: 6.h)),
              SizedBox(height: 1.v),
              AppbarSubtitleFive(text: "Here is your Course today ")
            ])),
        actions: [
          AppbarTrailingImage(//imgVector
              imagePath: ImageConstant.imgVector,
              margin: EdgeInsets.fromLTRB(50.h, 2.v, 40.h, 0.v))
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
    
          List images = [
                      {
                        'image': 'assets/onboarding/onboarding1.png',
                        'title': 'Matematika',
                        'background':
                            appTheme.deepOrange400,
                            'icon': 
                              'assets/images/img_square_root_of_x_math_formula.svg'
                      },
                      {
                        'image': 'assets/onboarding/onboarding3.png',
                        'title': 'Geografi',
                        'background':
                            appTheme.blue,
                        'icon':  'assets/images/img_earth_1.svg'
                      },
                      {
                        'image': 'assets/onboarding/onboarding2.png',
                        'title': 'Fisika',
                        'background':
                            appTheme.yellow,
                            'icon':  'assets/images/img_square_root_of_x_math_formula.svg'
                      },
                    ];

    return SizedBox(
        height: 119.v,
        child: ListView.separated(
            scrollDirection: Axis.horizontal,
            separatorBuilder: (context, index) {
              return SizedBox(width: 16.h);
            },
            itemCount: images.length,
            itemBuilder: (BuildContext context, int index) {
              return UserprofileItemWidget(images[index]['title'], images[index]['background'], images[index]['icon']);
            }));
            // images.map((imageUrl) {
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
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Padding(
                        padding: EdgeInsets.only(left: 20.h, top: 21.v),
                        
                        child: Container(
                          width: 328,
                          child: Column(
                            
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text("Biology",
                                        style: CustomTextStyles.titleMediumWhiteA700),
                                    Padding(
                                      padding: const EdgeInsets.only(right: 17),
                                      child: CustomImageView(
                                                                      imagePath:
                                      'assets/icon/iconelipsis.png',
                                                                      height: 24.adaptSize,
                                                                      width: 24.adaptSize,
                                                                      color: Colors.white
                                                                    ),
                                    )
                                  ],
                                ),
                                SizedBox(height: 3.v),
                                Text("Chapter 3: Animal Kingdom",
                                    style: CustomTextStyles.labelLargeWhiteA700),
                                SizedBox(height: 10.v),   
                                  Row(
                                    children: [
                                      CustomImageView(
                                    imagePath: 'assets/images/img_location_point_2.svg',
                                    color: Colors.white70,
                                    radius: BorderRadius.circular(2.h)),
                                    const SizedBox(
                                  width: 8.0,
                                    ),
                                      Text("Room 2-168",
                                            style: CustomTextStyles
                                                .bodySmallWhiteA700_1),
                                    ],
                                  ),
                                CustomImageView(
                                    imagePath: ImageConstant.imgLocationPoint2,
                                    height: 5.v,
                                    width: 16.h,
                                    radius: BorderRadius.circular(2.h))
                              ]),
                        )),
                   
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
