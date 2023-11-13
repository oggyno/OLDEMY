import '../light_course_playlist_page/widgets/lightcourseplaylist_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';

// ignore_for_file: must_be_immutable
class LightCoursePlaylistPage extends StatefulWidget {
  const LightCoursePlaylistPage({Key? key})
      : super(
          key: key,
        );

  @override
  LightCoursePlaylistPageState createState() => LightCoursePlaylistPageState();
}

class LightCoursePlaylistPageState extends State<LightCoursePlaylistPage>
    with AutomaticKeepAliveClientMixin<LightCoursePlaylistPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA70001,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: _buildFortyNine(context),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyNine(BuildContext context) {
    return Column(
      children: [
        Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 14.v,
          ),
          decoration: AppDecoration.fillWhiteA,
          child: Text(
            "Section 1 : Introduction to Data Science",
            style: theme.textTheme.bodyMedium,
          ),
        ),
        SizedBox(height: 27.v),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 25.h),
          child: ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (
              context,
              index,
            ) {
              return Padding(
                padding: EdgeInsets.symmetric(vertical: 11.0.v),
                child: SizedBox(
                  width: double.maxFinite,
                  child: Divider(
                    height: 1.v,
                    thickness: 1.v,
                    color: theme.colorScheme.onPrimaryContainer,
                  ),
                ),
              );
            },
            itemCount: 4,
            itemBuilder: (context, index) {
              return LightcourseplaylistItemWidget();
            },
          ),
        ),
      ],
    );
  }
}
