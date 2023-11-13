import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/presentation/light_course_playlist_page/light_course_playlist_page.dart';
import 'package:oldemy/widgets/app_bar/appbar_title_button.dart';
import 'package:oldemy/widgets/app_bar/custom_app_bar.dart';

class LightCoursePlaylistTabContainerScreen extends StatefulWidget {
  const LightCoursePlaylistTabContainerScreen({Key? key}) : super(key: key);

  @override
  LightCoursePlaylistTabContainerScreenState createState() =>
      LightCoursePlaylistTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class LightCoursePlaylistTabContainerScreenState
    extends State<LightCoursePlaylistTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA70001,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  _buildNine(context),
                  Column(children: [
                    _buildBaseVideoPlayer(context),
                    _buildTabview(context),
                    SizedBox(
                        height: 452.v,
                        child: TabBarView(
                            controller: tabviewController,
                            children: [
                              LightCoursePlaylistPage(),
                              LightCoursePlaylistPage()
                            ]))
                  ])
                ]))));
  }

  /// Section Widget
  Widget _buildNine(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(vertical: 14.v),
        decoration: AppDecoration.fillPrimary,
        child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(height: 5.v),
          CustomAppBar(
              title: AppbarTitleButton(
                  margin: EdgeInsets.only(left: 25.h),
                  onTap: () {
                    onTapIntroduction(context);
                  }))
        ]));
  }

  /// Section Widget
  Widget _buildBaseVideoPlayer(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 15.v),
        decoration: AppDecoration.fillOnPrimary,
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Align(
              alignment: Alignment.centerRight,
              child: Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child:
                      Row(mainAxisAlignment: MainAxisAlignment.end, children: [
                    Text("480P",
                        style: CustomTextStyles.bodySmallWhiteA7000112),
                    Padding(
                        padding: EdgeInsets.only(left: 29.h),
                        child: Text("1.0X",
                            style: CustomTextStyles.bodySmallWhiteA7000112))
                  ]))),
          SizedBox(height: 42.v),
          CustomImageView(
              imagePath: ImageConstant.imgPlayerControl,
              height: 29.v,
              width: 240.h,
              alignment: Alignment.center),
          SizedBox(height: 41.v),
          Row(children: [
            Expanded(
                child: SliderTheme(
                    data: SliderThemeData(
                        trackShape: RoundedRectSliderTrackShape(),
                        activeTrackColor: appTheme.redA100,
                        inactiveTrackColor: appTheme.gray1004c,
                        thumbColor: appTheme.redA100,
                        thumbShape: RoundSliderThumbShape()),
                    child: Slider(
                        value: 25.19,
                        min: 0.0,
                        max: 100.0,
                        onChanged: (value) {}))),
            Padding(
                padding: EdgeInsets.only(left: 5.h),
                child: Text("0:00 / 1:45",
                    style: CustomTextStyles.bodySmallWhiteA70001))
          ]),
          SizedBox(height: 15.v),
          Padding(
              padding: EdgeInsets.only(left: 22.h, right: 32.h),
              child: Row(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgSkipBack,
                    height: 15.adaptSize,
                    width: 15.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Text("Previous",
                        style: CustomTextStyles.bodySmallWhiteA70001)),
                Spacer(flex: 50),
                CustomImageView(
                    imagePath: ImageConstant.imgBarChart2,
                    height: 15.adaptSize,
                    width: 15.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Text("Subtitle",
                        style: CustomTextStyles.bodySmallWhiteA70001)),
                Spacer(flex: 49),
                CustomImageView(
                    imagePath: ImageConstant.imgSkipBack,
                    height: 15.adaptSize,
                    width: 15.adaptSize),
                Padding(
                    padding: EdgeInsets.only(left: 7.h),
                    child: Text("Next",
                        style: CustomTextStyles.bodySmallWhiteA70001))
              ])),
          SizedBox(height: 5.v)
        ]));
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 52.v,
        width: double.maxFinite,
        decoration: BoxDecoration(color: appTheme.gray100),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: theme.colorScheme.onPrimary,
            labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: theme.colorScheme.onPrimaryContainer,
            unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'DM Sans',
                fontWeight: FontWeight.w400),
            indicator: BoxDecoration(color: appTheme.whiteA70001),
            tabs: [
              Tab(child: Text("Course Content")),
              Tab(child: Text("Description"))
            ]));
  }

  /// Navigates to the lightCourseDetailScreen when the action is triggered.
  onTapIntroduction(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightCourseDetailScreen);
  }
}
