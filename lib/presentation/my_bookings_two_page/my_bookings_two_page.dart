import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';

// ignore_for_file: must_be_immutable
class MyBookingsTwoPage extends StatefulWidget {
  const MyBookingsTwoPage({Key? key})
      : super(
          key: key,
        );

  @override
  MyBookingsTwoPageState createState() => MyBookingsTwoPageState();
}

class MyBookingsTwoPageState extends State<MyBookingsTwoPage>
    with AutomaticKeepAliveClientMixin<MyBookingsTwoPage> {
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
                SizedBox(height: 79.v),
                Padding(
                  padding: EdgeInsets.only(
                    left: 137.h,
                    right: 133.h,
                  ),
                  child: Text(
                    "No activity found",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
