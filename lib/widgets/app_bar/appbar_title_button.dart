import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class AppbarTitleButton extends StatelessWidget {
  AppbarTitleButton({
    Key? key,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomElevatedButton(
          height: 20.v,
          width: 127.h,
          text: "Course Detail",
          leftIcon: Container(
            margin: EdgeInsets.only(right: 20.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgArrowLeft,
              height: 20.adaptSize,
              width: 20.adaptSize,
            ),
          ),
          buttonStyle: CustomButtonStyles.none,
          buttonTextStyle: CustomTextStyles.bodyMediumWhiteA70001,
        ),
      ),
    );
  }
}
