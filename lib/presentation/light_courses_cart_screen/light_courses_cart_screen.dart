import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/app_bar/appbar_leading_image.dart';
import 'package:oldemy/widgets/app_bar/appbar_title.dart';
import 'package:oldemy/widgets/app_bar/custom_app_bar.dart';
import 'package:oldemy/widgets/custom_elevated_button.dart';

class LightCoursesCartScreen extends StatelessWidget {
  const LightCoursesCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                margin: EdgeInsets.only(top: 18.v),
                padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 19.v),
                decoration: AppDecoration.fillGray
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 10.v),
                  _buildCardCardContent(context),
                  SizedBox(height: 11.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 3.h),
                      child: _buildThirtyOne(context,
                          saveForLater: "Save for later", remove: "Remove")),
                  SizedBox(height: 12.v),
                  _buildCardCardContent1(context),
                  SizedBox(height: 11.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 3.h),
                      child: _buildThirtyOne(context,
                          saveForLater: "Save for later", remove: "Remove")),
                  SizedBox(height: 27.v),
                  Divider(indent: 4.h),
                  SizedBox(height: 13.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 3.h),
                          child: Text("Saved for later",
                              style: CustomTextStyles.titleSmallOnPrimary))),
                  SizedBox(height: 11.v),
                  _buildCardCardContent2(context),
                  SizedBox(height: 9.v),
                  Padding(
                      padding: EdgeInsets.only(left: 4.h, right: 3.h),
                      child: _buildThirtyOne(context,
                          saveForLater: "Add to cart", remove: "Remove")),
                  SizedBox(height: 63.v),
                  Opacity(
                      opacity: 0.3,
                      child: Divider(
                          color: theme.colorScheme.onPrimaryContainer
                              .withOpacity(0.46),
                          indent: 4.h)),
                  SizedBox(height: 21.v),
                  _buildTwentyNine(context),
                  SizedBox(height: 32.v),
                  CustomElevatedButton(
                      text: "In Development",
                      buttonStyle: CustomButtonStyles.fillGreen)
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
        title: AppbarTitle(text: "Cart", margin: EdgeInsets.only(left: 20.h)));
  }

  /// Section Widget
  Widget _buildCardCardContent(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 19.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Complete Bundle",
                        style: CustomTextStyles.bodySmallOnPrimary),
                    SizedBox(height: 4.v),
                    Text("IDR 999.000", style: theme.textTheme.labelLarge)
                  ])),
          Container(
              padding: EdgeInsets.all(25.h),
              decoration: AppDecoration.fillRedA
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
              child: Container(
                  height: 23.adaptSize,
                  width: 23.adaptSize,
                  decoration: BoxDecoration(
                      color: appTheme.whiteA700.withOpacity(0.17),
                      borderRadius: BorderRadius.circular(11.h))))
        ]));
  }

  /// Section Widget
  Widget _buildCardCardContent1(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 19.v),
              child: _buildCardCardTitle(context,
                  duration: "Subscription 1 month", price: "IDR 79.000")),
          Container(
              height: 75.adaptSize,
              width: 75.adaptSize,
              padding: EdgeInsets.all(25.h),
              decoration: AppDecoration.fillPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
              child: CustomImageView(
                  imagePath: ImageConstant.imgOffer,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center))
        ]));
  }

  /// Section Widget
  Widget _buildCardCardContent2(BuildContext context) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.fillWhiteA
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(children: [
          Container(
              height: 75.adaptSize,
              width: 75.adaptSize,
              padding: EdgeInsets.all(25.h),
              decoration: AppDecoration.fillPrimary
                  .copyWith(borderRadius: BorderRadiusStyle.roundedBorder15),
              child: CustomImageView(
                  imagePath: ImageConstant.imgOffer,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  alignment: Alignment.center)),
          Padding(
              padding: EdgeInsets.only(left: 20.h, top: 19.v, bottom: 19.v),
              child: _buildCardCardTitle(context,
                  duration: "Subscription 1 month", price: "IDR 79.000"))
        ]));
  }

  /// Section Widget
  Widget _buildTwentyNine(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h, right: 6.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("Total Items",
              style: CustomTextStyles.labelLargeOnPrimaryContainer),
          Text("IDR 1.100.000", style: theme.textTheme.labelLarge)
        ]));
  }

  /// Common widget
  Widget _buildThirtyOne(
    BuildContext context, {
    required String saveForLater,
    required String remove,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(saveForLater,
          style: CustomTextStyles.labelLargeOnPrimaryContainer
              .copyWith(color: theme.colorScheme.onPrimaryContainer)),
      Text(remove,
          style: CustomTextStyles.labelLargeOnPrimaryContainer
              .copyWith(color: theme.colorScheme.onPrimaryContainer))
    ]);
  }

  /// Common widget
  Widget _buildCardCardTitle(
    BuildContext context, {
    required String duration,
    required String price,
  }) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Text(duration,
          style: CustomTextStyles.bodySmallOnPrimary
              .copyWith(color: theme.colorScheme.onPrimary)),
      SizedBox(height: 4.v),
      Text(price,
          style: theme.textTheme.labelLarge!
              .copyWith(color: theme.colorScheme.onPrimary))
    ]);
  }

  /// Navigates back to the previous screen.
  onTapArrowLeft(BuildContext context) {
    Navigator.pop(context);
  }
}
