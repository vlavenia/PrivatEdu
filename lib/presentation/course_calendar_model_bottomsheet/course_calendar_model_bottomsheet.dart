import '../course_calendar_model_bottomsheet/widgets/viewhierarchy_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';

// ignore_for_file: must_be_immutable
class CourseCalendarModelBottomsheet extends StatelessWidget {
  const CourseCalendarModelBottomsheet({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.maxFinite,
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder32,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.end,
        children: [
          SizedBox(height: 15.v),
          SizedBox(
            width: 50.h,
            child: Divider(),
          ),
          SizedBox(height: 14.v),
          ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Opacity(
                opacity: 0.4,
                child: Padding(
                  padding: EdgeInsets.symmetric(vertical: 11.0.v),
                  child: SizedBox(
                    width: 327.h,
                    child: Divider(
                      height: 1.v,
                      thickness: 1.v,
                      color: appTheme.blueGray100.withOpacity(0.49),
                    ),
                  ),
                ),
              );
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return ViewhierarchyItemWidget();
            },
          ),
        ],
      ),
    );
  }
}
