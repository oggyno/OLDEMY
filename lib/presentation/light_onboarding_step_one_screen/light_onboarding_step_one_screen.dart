import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/custom_elevated_button.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class LightOnboardingStepOneScreen extends StatelessWidget {
  const LightOnboardingStepOneScreen({Key? key}) : super(key: key);

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
                                  imagePath: ImageConstant.imgEllipse1,
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
                                                    ImageConstant.imgEllipse2,
                                                height: 672.v,
                                                width: 375.h,
                                                alignment: Alignment.center)),
                                        Align(
                                            alignment: Alignment.topCenter,
                                            child: Padding(
                                                padding: EdgeInsets.only(
                                                    left: 80.h,
                                                    top: 147.v,
                                                    right: 80.h),
                                                child: Column(
                                                    mainAxisSize:
                                                        MainAxisSize.min,
                                                    children: [
                                                      Text("OLDEMY ACADEMY",
                                                          style: theme.textTheme
                                                              .bodyLarge),
                                                      SizedBox(height: 20.v),
                                                      SizedBox(
                                                          width: 214.h,
                                                          child: Text(
                                                              "Kami akan menyajikan materi\npembelajaran, kuis, dan skor\nuntuk meningkatkan keahlian",
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
                          _buildOne(context)
                        ]))))));
  }

  /// Section Widget
  Widget _buildOne(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 55.v),
            decoration: AppDecoration.fillGray
                .copyWith(borderRadius: BorderRadiusStyle.customBorderTL30),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
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
                  SizedBox(height: 79.v),
                  CustomElevatedButton(
                      text: "Next",
                      onPressed: () {
                        onTapNext(context);
                      }),
                  SizedBox(height: 74.v),
                  Text("OLDEMY", style: CustomTextStyles.bodySmall12)
                ])));
  }

  /// Navigates to the lightOnboardingStepTwoScreen when the action is triggered.
  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightOnboardingStepTwoScreen);
  }
}
