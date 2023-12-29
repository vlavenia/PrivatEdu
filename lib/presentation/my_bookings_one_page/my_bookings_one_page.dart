import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class MyBookingsOnePage extends StatefulWidget {
  const MyBookingsOnePage({Key? key})
      : super(
          key: key,
        );

  @override
  MyBookingsOnePageState createState() => MyBookingsOnePageState();
}

class MyBookingsOnePageState extends State<MyBookingsOnePage>
    with AutomaticKeepAliveClientMixin<MyBookingsOnePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: 12.v),
                _buildOrderDetails(context),
              ],
            ),
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOrderDetails(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "Order ID : 123456",
            style: CustomTextStyles.titleMediumErrorContainer,
          ),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "Order Date : June 25, 2023, 10:00 PM-03:00 PM",
              style: theme.textTheme.bodySmall,
            ),
          ),
          SizedBox(height: 12.v),
          Column(
            children: [
              Container(
                decoration: AppDecoration.outlineGray.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
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
                        padding: EdgeInsets.all(19.h),
                        decoration: AppDecoration.fillOrange.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder16,
                        ),
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                height: 52.adaptSize,
                                width: 52.adaptSize,
                                margin: EdgeInsets.only(left: 1.h),
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
                        left: 23.h,
                        top: 16.v,
                        bottom: 25.v,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Mr. Andre Dwiki",
                            style: theme.textTheme.titleMedium,
                          ),
                          SizedBox(height: 10.v),
                          Row(
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgSignalYellow600,
                                height: 17.adaptSize,
                                width: 17.adaptSize,
                              ),
                              Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: Text(
                                  "4.8",
                                  style: CustomTextStyles.labelLargeGray900Bold,
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(right: 4.h),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomElevatedButton(
                        height: 40.v,
                        text: "Cancel",
                        margin: EdgeInsets.only(right: 11.h),
                        buttonStyle: CustomButtonStyles.fillBlueGrayC,
                        buttonTextStyle: theme.textTheme.bodySmall!,
                      ),
                    ),
                    Expanded(
                      child: CustomElevatedButton(
                        height: 40.v,
                        text: "View Details",
                        margin: EdgeInsets.only(left: 11.h),
                        buttonTextStyle: CustomTextStyles.bodySmallWhiteA700_2,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
