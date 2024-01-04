import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/presentation/my_bookings_one_page/my_bookings_one_page.dart';
import 'package:privatedu/presentation/my_bookings_two_page/my_bookings_two_page.dart';
import 'package:privatedu/widgets/app_bar/appbar_subtitle.dart';
import 'package:privatedu/widgets/app_bar/appbar_trailing_image.dart';
import 'package:privatedu/widgets/app_bar/custom_app_bar.dart';
import 'package:privatedu/widgets/custom_search_view.dart';

// ignore_for_file: must_be_immutable
class MyBookingsOneTabContainerPage extends StatefulWidget {
  const MyBookingsOneTabContainerPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyBookingsOneTabContainerPageState createState() =>
      MyBookingsOneTabContainerPageState();
}

class MyBookingsOneTabContainerPageState
    extends State<MyBookingsOneTabContainerPage> with TickerProviderStateMixin {
  TextEditingController searchController = TextEditingController();

  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 20.h,
                  right: 7.h,
                ),
                child: CustomSearchView(
                  controller: searchController,
                  autofocus:false,
                  hintText: "Search Course, Mentor, etc",
                  contentPadding: EdgeInsets.symmetric(vertical: 15.v),
                ),
              ),
              SizedBox(height: 12.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 536.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      MyBookingsOnePage(),
                      MyBookingsTwoPage(),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
      height: 45.v,
      title: AppbarSubtitle(
        text: "My Bookings",
        margin: EdgeInsets.only(left: 23.h),
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgUserGray10002,
          margin: EdgeInsets.fromLTRB(13.h, 8.v, 13.h, 5.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 37.v,
      width: 342.h,
      decoration: BoxDecoration(
        color: appTheme.gray10003,
        borderRadius: BorderRadius.circular(
          5.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.gray900.withOpacity(0.65),
        labelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        unselectedLabelColor: appTheme.gray900.withOpacity(0.65),
        unselectedLabelStyle: TextStyle(
          fontSize: 12.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        ),
        indicatorPadding: EdgeInsets.all(
          2.0.h,
        ),
        indicator: BoxDecoration(
          color: appTheme.whiteA700,
          borderRadius: BorderRadius.circular(
            5.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "Upcoming",
            ),
          ),
          Tab(
            child: Text(
              "Past",
            ),
          ),
        ],
      ),
    );
  }
}
