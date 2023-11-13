import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class LightcourseplaylistItemWidget extends StatelessWidget {
  const LightcourseplaylistItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "1. What is Data Science?",
              style: theme.textTheme.bodyMedium,
            ),
            SizedBox(height: 3.v),
            Row(
              children: [
                Text(
                  "Video",
                  style: theme.textTheme.bodySmall,
                ),
                Container(
                  height: 3.adaptSize,
                  width: 3.adaptSize,
                  margin: EdgeInsets.only(
                    left: 10.h,
                    top: 5.v,
                    bottom: 5.v,
                  ),
                  decoration: BoxDecoration(
                    color: theme.colorScheme.onPrimaryContainer,
                    borderRadius: BorderRadius.circular(
                      1.h,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "6 min",
                    style: theme.textTheme.bodySmall,
                  ),
                ),
              ],
            ),
          ],
        ),
        Padding(
          padding: EdgeInsets.only(
            top: 8.v,
            bottom: 7.v,
          ),
          child: CustomIconButton(
            height: 20.adaptSize,
            width: 20.adaptSize,
            padding: EdgeInsets.all(6.h),
            child: CustomImageView(
              imagePath: ImageConstant.imgBaseCheckbox,
            ),
          ),
        ),
      ],
    );
  }
}
