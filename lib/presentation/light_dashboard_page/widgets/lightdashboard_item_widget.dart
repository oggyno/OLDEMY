import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';

// ignore: must_be_immutable
class LightdashboardItemWidget extends StatelessWidget {
  const LightdashboardItemWidget({Key? key})
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
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: EdgeInsets.symmetric(vertical: 8.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Data Preprocessing ",
                  style: CustomTextStyles.bodySmallOnPrimary,
                ),
                SizedBox(height: 4.v),
                Text(
                  "IDR 379.000",
                  style: theme.textTheme.labelLarge,
                ),
                SizedBox(height: 6.v),
                SizedBox(
                  width: 167.h,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgStar,
                        height: 13.adaptSize,
                        width: 13.adaptSize,
                        margin: EdgeInsets.only(bottom: 1.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "4.8",
                          style: theme.textTheme.labelMedium,
                        ),
                      ),
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(
                          top: 5.v,
                          bottom: 6.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimaryContainer,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Text(
                        "By dhaval patel",
                        style: theme.textTheme.bodySmall,
                      ),
                      Container(
                        height: 3.adaptSize,
                        width: 3.adaptSize,
                        margin: EdgeInsets.only(
                          top: 5.v,
                          bottom: 6.v,
                        ),
                        decoration: BoxDecoration(
                          color: theme.colorScheme.onPrimaryContainer,
                          borderRadius: BorderRadius.circular(
                            1.h,
                          ),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(bottom: 1.v),
                        child: Text(
                          "All Level",
                          style: theme.textTheme.bodySmall,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
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
        ],
      ),
    );
  }
}
