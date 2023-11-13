import '../light_dashboard_page/widgets/lightdashboard_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/app_bar/appbar_subtitle.dart';
import 'package:oldemy/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:oldemy/widgets/app_bar/appbar_trailing_image.dart';
import 'package:oldemy/widgets/app_bar/custom_app_bar.dart';
import 'package:oldemy/widgets/custom_icon_button.dart';

class LightDashboardPage extends StatelessWidget {
  const LightDashboardPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                height: 622.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.topCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: Container(
                          padding: EdgeInsets.symmetric(
                              horizontal: 25.h, vertical: 106.v),
                          decoration: AppDecoration.fillGray.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderTL30),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(left: 3.h),
                                    child: Text("Recommendation",
                                        style: CustomTextStyles
                                            .titleSmallOnPrimary)),
                                SizedBox(height: 13.v),
                                _buildLightDashboard(context)
                              ]))),
                  _buildCardPreBuild(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 75.v,
        title: Padding(
            padding: EdgeInsets.only(left: 85.h),
            child: Column(children: [
              AppbarSubtitleOne(
                  text: "Welcome back", margin: EdgeInsets.only(right: 14.h)),
              SizedBox(height: 2.v),
              AppbarSubtitle(text: "Wirya Aditya")
            ])),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgIconsBell,
              margin: EdgeInsets.fromLTRB(25.h, 17.v, 25.h, 18.v))
        ]);
  }

  /// Section Widget
  Widget _buildLightDashboard(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 15.v);
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return LightdashboardItemWidget();
        });
  }

  /// Section Widget
  Widget _buildCardPreBuild(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: GestureDetector(
            onTap: () {
              onTapCardPreBuild(context);
            },
            child: Container(
                margin: EdgeInsets.only(left: 25.h, top: 18.v, right: 25.h),
                padding: EdgeInsets.all(15.h),
                decoration: AppDecoration.fillWhiteA
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.v),
                                child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text("Introduction to Data Science",
                                          style: CustomTextStyles
                                              .bodySmallOnPrimary),
                                      SizedBox(height: 6.v),
                                      Text("Free",
                                          style: theme.textTheme.labelLarge)
                                    ])),
                            CustomIconButton(
                                height: 60.adaptSize,
                                width: 60.adaptSize,
                                padding: EdgeInsets.all(17.h),
                                decoration: IconButtonStyleHelper.fillPrimary,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgOffer))
                          ]),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(right: 17.h),
                          child: Row(children: [
                            CustomIconButton(
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                padding: EdgeInsets.all(7.h),
                                decoration: IconButtonStyleHelper.fillGray,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgIconsAward)),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: _buildContent(context,
                                    currentProgress: "Current Progress",
                                    fifty: "50%")),
                            Spacer(),
                            CustomIconButton(
                                height: 35.adaptSize,
                                width: 35.adaptSize,
                                padding: EdgeInsets.all(7.h),
                                decoration: IconButtonStyleHelper.fillGray,
                                child: CustomImageView(
                                    imagePath: ImageConstant.imgIconsAward)),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: _buildContent(context,
                                    currentProgress: "Current Progress",
                                    fifty: "50%"))
                          ])),
                      SizedBox(height: 14.v),
                      Padding(
                          padding: EdgeInsets.only(right: 11.h),
                          child: Container(
                              height: 15.v,
                              width: 284.h,
                              decoration: BoxDecoration(
                                  color: appTheme.gray100,
                                  borderRadius: BorderRadius.circular(7.h)),
                              child: ClipRRect(
                                  borderRadius: BorderRadius.circular(7.h),
                                  child: LinearProgressIndicator(
                                      value: 0.17,
                                      backgroundColor: appTheme.gray100,
                                      valueColor: AlwaysStoppedAnimation<Color>(
                                          appTheme.green300)))))
                    ]))));
  }

  /// Common widget
  Widget _buildContent(
    BuildContext context, {
    required String currentProgress,
    required String fifty,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(currentProgress,
          style: theme.textTheme.bodySmall!
              .copyWith(color: theme.colorScheme.onPrimaryContainer)),
      SizedBox(height: 2.v),
      Text(fifty,
          style: theme.textTheme.bodyMedium!
              .copyWith(color: theme.colorScheme.onPrimary))
    ]);
  }

  /// Navigates to the lightCourseDetailScreen when the action is triggered.
  onTapCardPreBuild(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightCourseDetailScreen);
  }
}
