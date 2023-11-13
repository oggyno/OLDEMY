import '../light_course_result_page/widgets/lightcourseresult_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/app_bar/appbar_leading_image.dart';
import 'package:oldemy/widgets/app_bar/appbar_title.dart';
import 'package:oldemy/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oldemy/widgets/app_bar/custom_app_bar.dart';

class LightCourseResultPage extends StatelessWidget {
  const LightCourseResultPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 18.v),
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 27.v),
                decoration: AppDecoration.fillGray
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  _buildThirtyFive(context),
                  SizedBox(height: 14.v),
                  _buildLightCourseResult(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 45.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 25.h),
            onTap: () {
              onTapArrowLeft(context);
            }),
        title: AppbarTitle(
            text: "Search Results", margin: EdgeInsets.only(left: 20.h)),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgCart,
              margin: EdgeInsets.symmetric(horizontal: 25.h))
        ]);
  }

  /// Section Widget
  Widget _buildThirtyFive(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h, right: 2.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Package", style: CustomTextStyles.titleSmallOnPrimary),
          Padding(
              padding: EdgeInsets.only(bottom: 3.v),
              child: Text("Total 2",
                  style: CustomTextStyles.labelLargeOnPrimaryContainer))
        ]));
  }

  /// Section Widget
  Widget _buildLightCourseResult(BuildContext context) {
    return Expanded(
        child: ListView.separated(
            physics: BouncingScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 15.v);
            },
            itemCount: 2,
            itemBuilder: (context, index) {
              return LightcourseresultItemWidget();
            }));
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
