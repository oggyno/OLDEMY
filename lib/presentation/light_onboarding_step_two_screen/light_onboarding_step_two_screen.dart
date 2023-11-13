import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LightOnboardingStepTwoScreen extends StatelessWidget {
  const LightOnboardingStepTwoScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: SingleChildScrollView(
                    child: SizedBox(
                        height: 768.v,
                        width: double.maxFinite,
                        child: Stack(alignment: Alignment.topCenter, children: [
                          Opacity(
                              opacity: 0.6,
                              child: CustomImageView(
                                  imagePath: ImageConstant.imgEllipse1768x375,
                                  height: 768.v,
                                  width: 375.h,
                                  alignment: Alignment.center)),
                          Align(
                              alignment: Alignment.topCenter,
                              child: Container(
                                  height: 672.v,
                                  width: double.maxFinite,
                                  margin: EdgeInsets.only(top: 33.v),
                                  child: Stack(
                                      alignment: Alignment.topCenter,
                                      children: [
                                        Opacity(
                                            opacity: 0.6,
                                            child: CustomImageView(
                                                imagePath: ImageConstant
                                                    .imgEllipse2672x375,
                                                height: 672.v,
                                                width: 375.h,
                                                alignment: Alignment.center)),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 72.h,
                                                    top: 147.v,
                                                    right: 72.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text("OLDEMY ACADEMY",
                                                          style: theme.textTheme
                                                              .bodyLarge),
                                                      SizedBox(height: 20.v),
                                                      SizedBox(
                                                          width: 230.h,
                                                          child: Text(
                                                              "Materi pembelajaran \nup to date & alur pembelajaran\nyang ter-arah",
                                                              maxLines: 3,
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .center,
                                                              style: theme
                                                                  .textTheme
                                                                  .bodyLarge))
                                                    ])))
                                      ]))),
                          _buildTwelve(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildTwelve(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 21.h, vertical: 55.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 7.v),
                  SizedBox(
                      height: 8.v,
                      child: AnimatedSmoothIndicator(
                          activeIndex: 0,
                          count: 3,
                          effect: ScrollingDotsEffect(
                              spacing: 16,
                              activeDotColor: appTheme.indigo500,
                              dotColor: appTheme.teal200,
                              dotHeight: 8.v,
                              dotWidth: 8.h))),
                  SizedBox(height: 76.v),
                  Padding(
                      padding: EdgeInsets.only(right: 3.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: CustomElevatedButton(
                                    text: "Back",
                                    margin: EdgeInsets.only(right: 9.h),
                                    buttonStyle: CustomButtonStyles.fillRedA,
                                    onPressed: () {
                                      onTapBack(context);
                                    })),
                            Expanded(
                                child: CustomElevatedButton(
                                    text: "Next",
                                    margin: EdgeInsets.only(left: 9.h),
                                    onPressed: () {
                                      onTapNext(context);
                                    }))
                          ])),
                  SizedBox(height: 77.v),
                  Text("OLDEMY", style: CustomTextStyles.bodySmall12)
                ])));
  }

  /// Navigates to the lightOnboardingStepOneScreen when the action is triggered.
  onTapBack(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightOnboardingStepOneScreen);
  }

  /// Navigates to the lightOnboardingStepThreeScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightOnboardingStepThreeScreen);
  }
}
