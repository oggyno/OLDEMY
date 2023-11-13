import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/app_bar/appbar_title_button_one.dart';
import 'package:oldemy/widgets/app_bar/custom_app_bar.dart';

class LightAccountPage extends StatelessWidget {
  const LightAccountPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: SizedBox(
                width: double.maxFinite,
                child:
                    Column(mainAxisAlignment: MainAxisAlignment.end, children: [
                  Spacer(),
                  Text("Wirya Aditya", style: theme.textTheme.headlineSmall),
                  SizedBox(height: 4.v),
                  Text("wiryagaming123@gmail.com",
                      style: CustomTextStyles.bodyMediumWhiteA70001),
                  SizedBox(height: 26.v),
                  Container(
                      padding: EdgeInsets.symmetric(
                          horizontal: 25.h, vertical: 32.v),
                      decoration: AppDecoration.fillWhiteA.copyWith(
                          borderRadius: BorderRadiusStyle.customBorderTL30),
                      child: Column(mainAxisSize: MainAxisSize.min, children: [
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Account Settings",
                                style: theme.textTheme.bodySmall)),
                        SizedBox(height: 13.v),
                        Padding(
                            padding: EdgeInsets.only(right: 9.h),
                            child: _buildFrameThirtyFive(context,
                                emailNotification: "Account Security")),
                        SizedBox(height: 23.v),
                        Padding(
                            padding: EdgeInsets.only(right: 9.h),
                            child: _buildFrameThirtyFive(context,
                                emailNotification:
                                    "Email notification preferences")),
                        SizedBox(height: 23.v),
                        Padding(
                            padding: EdgeInsets.only(right: 9.h),
                            child: _buildFrameThirtyFive(context,
                                emailNotification: "Learning reminders")),
                        SizedBox(height: 37.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Text("Support",
                                style: theme.textTheme.bodySmall)),
                        SizedBox(height: 13.v),
                        Padding(
                            padding: EdgeInsets.only(right: 9.h),
                            child: _buildFrameThirtyFive(context,
                                emailNotification: "About Sinau")),
                        SizedBox(height: 24.v),
                        Padding(
                            padding: EdgeInsets.only(right: 9.h),
                            child: _buildFrameThirtyFive(context,
                                emailNotification:
                                    "Frequently asked questions")),
                        SizedBox(height: 23.v),
                        Padding(
                            padding: EdgeInsets.only(right: 9.h),
                            child: _buildFrameThirtyFive(context,
                                emailNotification: "Share Sinau app")),
                        SizedBox(height: 91.v)
                      ]))
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        height: 57.v,
        title: AppbarTitleButtonOne(
            margin: EdgeInsets.only(left: 25.h),
            onTap: () {
              onTapAccount(context);
            }));
  }

  /// Common widget
  Widget _buildFrameThirtyFive(
    BuildContext context, {
    required String emailNotification,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Padding(
          padding: EdgeInsets.only(top: 2.v),
          child: Text(emailNotification,
              style: theme.textTheme.bodyMedium!
                  .copyWith(color: theme.colorScheme.onPrimary))),
      CustomImageView(
          imagePath: ImageConstant.imgArrowRight,
          height: 20.adaptSize,
          width: 20.adaptSize)
    ]);
  }

  /// Navigates to the lightDashboardContainerScreen when the action is triggered.
  onTapAccount(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightDashboardContainerScreen);
  }
}
