import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';

// ignore: must_be_immutable
class LightcourseresultItemWidget extends StatelessWidget {
  const LightcourseresultItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15.h),
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        children: [
          Container(
            padding: EdgeInsets.all(25.h),
            decoration: AppDecoration.fillRedA.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder15,
            ),
            child: Container(
              height: 23.adaptSize,
              width: 23.adaptSize,
              decoration: BoxDecoration(
                color: appTheme.whiteA700.withOpacity(0.17),
                borderRadius: BorderRadius.circular(
                  11.h,
                ),
              ),
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 20.h,
              top: 19.v,
              bottom: 19.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Complete Bundle",
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
                SizedBox(height: 4.v),
                Text(
                  "IDR 999.000",
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
