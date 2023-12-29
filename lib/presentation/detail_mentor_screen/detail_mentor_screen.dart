import '../detail_mentor_screen/widgets/am_item_widget.dart';
import '../detail_mentor_screen/widgets/datascience_item_widget.dart';
import '../detail_mentor_screen/widgets/detailmentor_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/app_bar/appbar_leading_image.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle_two.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';
import 'package:privatedu/widgets/custom_elevated_button.dart';
import 'package:readmore/readmore.dart';

class DetailMentorScreen extends StatelessWidget {
  const DetailMentorScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: 400.h,
          child: Column(
            children: [
              SizedBox(height: 15.v),
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: EdgeInsets.only(
                      left: 24.h,
                      bottom: 5.v,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Card(
                              clipBehavior: Clip.antiAlias,
                              elevation: 0,
                              margin: EdgeInsets.all(0),
                              color: appTheme.orange50,
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadiusStyle.roundedBorder16,
                              ),
                              child: Container(
                                height: 94.v,
                                width: 97.h,
                                padding: EdgeInsets.symmetric(
                                  horizontal: 20.h,
                                  vertical: 18.v,
                                ),
                                decoration: AppDecoration.fillOrange.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder16,
                                ),
                                child: Stack(
                                  alignment: Alignment.center,
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Container(
                                        height: 52.adaptSize,
                                        width: 52.adaptSize,
                                        decoration: BoxDecoration(
                                          color: appTheme.orangeA200Bf,
                                          borderRadius: BorderRadius.circular(
                                            26.h,
                                          ),
                                        ),
                                      ),
                                    ),
                                    CustomImageView(
                                      imagePath: ImageConstant.imgPlayGray90001,
                                      height: 55.adaptSize,
                                      width: 55.adaptSize,
                                      alignment: Alignment.center,
                                    ),
                                  ],
                                ),
                              ),
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 12.h,
                                top: 9.v,
                                bottom: 7.v,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    "Mr. Gerry Dwi",
                                    style: theme.textTheme.titleMedium,
                                  ),
                                  Text(
                                    "Dental Surgeon",
                                    style: theme.textTheme.bodySmall,
                                  ),
                                  SizedBox(height: 15.v),
                                  Row(
                                    children: [
                                      CustomImageView(
                                        imagePath: ImageConstant.imgSignal,
                                        height: 16.adaptSize,
                                        width: 16.adaptSize,
                                        margin: EdgeInsets.only(bottom: 2.v),
                                      ),
                                      Padding(
                                        padding: EdgeInsets.only(left: 4.h),
                                        child: Text(
                                          "4.8",
                                          style: theme.textTheme.bodySmall,
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 19.v),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "Biography",
                            style: CustomTextStyles.titleSmallGray900,
                          ),
                        ),
                        SizedBox(height: 6.v),
                        Container(
                          width: 297.h,
                          margin: EdgeInsets.only(left: 8.h),
                          child: ReadMoreText(
                            "Dr. Jenny Wilson (Implantologist),  is a Dentist in \r\nAmerica, she has 20 years of...  ",
                            trimLines: 2,
                            colorClickableText: appTheme.blue400,
                            trimMode: TrimMode.Line,
                            trimCollapsedText: "Read More",
                            moreStyle: CustomTextStyles
                                .bodySmallErrorContainer_1
                                .copyWith(
                              height: 1.67,
                            ),
                            lessStyle: CustomTextStyles
                                .bodySmallErrorContainer_1
                                .copyWith(
                              height: 1.67,
                            ),
                          ),
                        ),
                        SizedBox(height: 18.v),
                        _buildSpecialities(context),
                        SizedBox(height: 21.v),
                        _buildFrameTen(context),
                        SizedBox(height: 15.v),
                        _buildDetailMentor(context),
                        SizedBox(height: 23.v),
                        _buildTime(context),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: _buildMentorAppointment(context),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 47.v,
      leadingWidth: 52.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 27.h,
          top: 12.v,
          bottom: 11.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleTwo(
        text: "Detail  Mentor",
      ),
    );
  }

  /// Section Widget
  Widget _buildSpecialities(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 4.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Specialities",
            style: CustomTextStyles.titleSmallGray900,
          ),
          SizedBox(height: 15.v),
          Wrap(
            runSpacing: 12.v,
            spacing: 12.h,
            children:
                List<Widget>.generate(3, (index) => DatascienceItemWidget()),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameTen(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(right: 49.h),
      child: Row(
        children: [
          Text(
            "Date",
            style: CustomTextStyles.titleLargeGray900,
          ),
          Spacer(),
          Padding(
            padding: EdgeInsets.only(
              top: 7.v,
              bottom: 4.v,
            ),
            child: Text(
              "July",
              style: CustomTextStyles.labelLargeGray900,
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRight,
            height: 16.adaptSize,
            width: 16.adaptSize,
            margin: EdgeInsets.only(
              left: 4.h,
              top: 6.v,
              bottom: 7.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildDetailMentor(BuildContext context) {
    return SizedBox(
      height: 64.v,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        separatorBuilder: (
          context,
          index,
        ) {
          return SizedBox(
            width: 20.h,
          );
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return DetailmentorItemWidget();
        },
      ),
    );
  }

  /// Section Widget
  Widget _buildTime(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          "Time",
          style: CustomTextStyles.titleLargeErrorContainer,
        ),
        SizedBox(height: 16.v),
        Wrap(
          runSpacing: 20.v,
          spacing: 20.h,
          children: List<Widget>.generate(3, (index) => AmItemWidget()),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildMentorAppointment(BuildContext context) {
    return CustomElevatedButton(
      text: "Mentor Appointment",
      margin: EdgeInsets.only(
        left: 61.h,
        right: 58.h,
        bottom: 31.v,
      ),
      buttonStyle: CustomButtonStyles.outlineGray,
      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700_1,
    );
  }
}
