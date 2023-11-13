import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LightOnboardingStepThreeScreen extends StatelessWidget {
  const LightOnboardingStepThreeScreen({Key? key}) : super(key: key);

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
                                  imagePath: ImageConstant.imgEllipse11,
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
                                                imagePath:
                                                    ImageConstant.imgEllipse21,
                                                height: 672.v,
                                                width: 375.h,
                                                alignment: Alignment.center)),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 55.h,
                                                    top: 147.v,
                                                    right: 55.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text("OLDEMY ACADEMY",
                                                          style: theme.textTheme
                                                              .bodyLarge),
                                                      SizedBox(height: 20.v),
                                                      SizedBox(
                                                          width: 264.h,
                                                          child: Text(
                                                              "Belajar dari dasar biar tidak kesasar,\nalur pembelajaran yang terstruktur",
                                                              maxLines: 2,
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
                          _buildTen(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildTen(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 55.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  SizedBox(height: 13.v),
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
                  SizedBox(height: 72.v),
                  CustomElevatedButton(
                      text: "Let’s Get Started",
                      onPressed: () {
                        onTapLetsGetStarted(context);
                      }),
                  SizedBox(height: 78.v),
                  Text("OLDEMY", style: CustomTextStyles.bodySmall12)
                ])));
  }

  /// Navigates to the lightAuthenticationScreen when the action is triggered.
  onTapLetsGetStarted(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightAuthenticationScreen);
  }
}
