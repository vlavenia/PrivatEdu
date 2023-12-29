import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:privatedu/core/app_export.dart';
import 'package:privatedu/widgets/custom_outlined_button.dart';

class SignUpTwoDialog extends StatelessWidget {
  const SignUpTwoDialog({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        width: 343.h,
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 25.v),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder25),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              SizedBox(height: 6.v),
              Container(
                  height: 147.v,
                  width: 159.h,
                  padding:
                      EdgeInsets.symmetric(horizontal: 59.h, vertical: 48.v),
                  decoration: BoxDecoration(
                      image: DecorationImage(
                          image: fs.Svg(ImageConstant.imgGroup4),
                          fit: BoxFit.cover)),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 45.v,
                      width: 39.h,
                      alignment: Alignment.bottomLeft)),
              SizedBox(height: 23.v),
              Container(
                  width: 232.h,
                  margin: EdgeInsets.only(left: 34.h, right: 35.h),
                  child: Text("Account information is correct?",
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.center,
                      style:
                          theme.textTheme.titleLarge!.copyWith(height: 1.20))),
              SizedBox(height: 16.v),
              Opacity(
                  opacity: 0.8,
                  child: Container(
                      width: 269.h,
                      margin: EdgeInsets.symmetric(horizontal: 16.h),
                      child: Text(
                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fames velit ",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: CustomTextStyles.bodyMediumBluegray50013
                              .copyWith(height: 1.69)))),
              SizedBox(height: 17.v),
              CustomOutlinedButton(
                  text: "Accept",
                  buttonStyle: CustomButtonStyles.outlinePrimary,
                  buttonTextStyle: CustomTextStyles.titleMediumWhiteA70017,
                  onPressed: () {
                    onTapAccept(context);
                  })
            ]));
  }

  /// Navigates to the signUpThreeScreen when the action is triggered.
  onTapAccept(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpThreeScreen);
  }
}
