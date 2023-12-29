import 'package:flutter/material.dart';
import 'package:privatedu/core/app_export.dart';

class CustomIconButton extends StatelessWidget {
  CustomIconButton({
    Key? key,
    this.alignment,
    this.height,
    this.width,
    this.padding,
    this.decoration,
    this.child,
    this.onTap,
  }) : super(
          key: key,
        );

  final Alignment? alignment;

  final double? height;

  final double? width;

  final EdgeInsetsGeometry? padding;

  final BoxDecoration? decoration;

  final Widget? child;

  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment ?? Alignment.center,
            child: iconButtonWidget,
          )
        : iconButtonWidget;
  }

  Widget get iconButtonWidget => SizedBox(
        height: height ?? 0,
        width: width ?? 0,
        child: IconButton(
          padding: EdgeInsets.zero,
          icon: Container(
            height: height ?? 0,
            width: width ?? 0,
            padding: padding ?? EdgeInsets.zero,
            decoration: decoration ??
                BoxDecoration(
                  color: appTheme.orange50,
                  borderRadius: BorderRadius.circular(15.h),
                ),
            child: child,
          ),
          onPressed: onTap,
        ),
      );
}

/// Extension on [CustomIconButton] to facilitate inclusion of all types of border style etc
extension IconButtonStyleHelper on CustomIconButton {
  static BoxDecoration get fillPrimary => BoxDecoration(
        color: theme.colorScheme.primary,
        borderRadius: BorderRadius.circular(31.h),
      );
  static BoxDecoration get fillPink => BoxDecoration(
        color: appTheme.pink900,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillIndigo => BoxDecoration(
        color: appTheme.indigo400,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillAmber => BoxDecoration(
        color: appTheme.amber700,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillIndigoTL25 => BoxDecoration(
        color: appTheme.indigo400,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillTeal => BoxDecoration(
        color: appTheme.teal30001,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillBlueGray => BoxDecoration(
        color: appTheme.blueGray500,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillIndigoTL251 => BoxDecoration(
        color: appTheme.indigo800,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillGreen => BoxDecoration(
        color: appTheme.green800,
        borderRadius: BorderRadius.circular(25.h),
      );
  static BoxDecoration get fillTealTL16 => BoxDecoration(
        color: appTheme.teal30001,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillPinkTL16 => BoxDecoration(
        color: appTheme.pink900,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillAmberTL16 => BoxDecoration(
        color: appTheme.amber700,
        borderRadius: BorderRadius.circular(16.h),
      );
  static BoxDecoration get fillGray => BoxDecoration(
        color: appTheme.gray10002,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get fillCyan => BoxDecoration(
        color: appTheme.orange50,
        borderRadius: BorderRadius.circular(20.h),
      );
      static BoxDecoration get lightorange => BoxDecoration(
        color: appTheme.orange50,
        borderRadius: BorderRadius.circular(20.h),
      );
       static BoxDecoration get lightbrown => BoxDecoration(
        color: appTheme.backgroundbrown,
        borderRadius: BorderRadius.circular(20.h),
      );
      //
       static BoxDecoration get lightblue => BoxDecoration(
        color: appTheme.backgroundblue,
        borderRadius: BorderRadius.circular(20.h),
      );
  static BoxDecoration get outlineWhiteA => BoxDecoration(
        color: appTheme.indigo400,
        borderRadius: BorderRadius.circular(16.h),
        border: Border.all(
          color: appTheme.whiteA700,
          width: 2.h,
        ),
      );
}
