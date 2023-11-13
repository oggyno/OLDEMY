import 'package:flutter/material.dart';
import 'package:oldemy/core/app_export.dart';
import 'package:oldemy/widgets/custom_elevated_button.dart';
import 'package:oldemy/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class LightAuthenticationScreen extends StatelessWidget {
  LightAuthenticationScreen({Key? key}) : super(key: key);

  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SizedBox(
                    width: double.maxFinite,
                    child: SingleChildScrollView(
                        child: SizedBox(
                            height: 768.v,
                            width: double.maxFinite,
                            child: Stack(
                                alignment: Alignment.topCenter,
                                children: [
                                  Opacity(
                                      opacity: 0.6,
                                      child: CustomImageView(
                                          imagePath: ImageConstant.imgEllipse12,
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
                                                            .imgEllipse22,
                                                        height: 672.v,
                                                        width: 375.h,
                                                        alignment:
                                                            Alignment.center)),
                                                Align(
                                                    alignment:
                                                        Alignment.topCenter,
                                                    child: Padding(
                                                        padding:
                                                            EdgeInsets.only(
                                                                left: 62.h,
                                                                top: 147.v,
                                                                right: 62.h),
                                                        child: Column(
                                                            mainAxisSize:
                                                                MainAxisSize
                                                                    .min,
                                                            children: [
                                                              Text(
                                                                  "OLDEMY ACADEMY",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge),
                                                              SizedBox(
                                                                  height: 21.v),
                                                              Text(
                                                                  "Belajar Data Science Lebih Mudah",
                                                                  style: theme
                                                                      .textTheme
                                                                      .bodyLarge)
                                                            ])))
                                              ]))),
                                  Align(
                                      alignment: Alignment.bottomCenter,
                                      child: Container(
                                          padding: EdgeInsets.symmetric(
                                              horizontal: 25.h, vertical: 43.v),
                                          decoration: AppDecoration.fillGray
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .customBorderTL30),
                                          child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                _buildEmail(context),
                                                SizedBox(height: 20.v),
                                                _buildPassword(context),
                                                SizedBox(height: 20.v),
                                                _buildLogIn(context),
                                                SizedBox(height: 20.v),
                                                _buildSignUp(context),
                                                SizedBox(height: 55.v),
                                                Text("OLDEMY",
                                                    style: CustomTextStyles
                                                        .bodySmall12),
                                                SizedBox(height: 12.v)
                                              ])))
                                ])))))));
  }

  /// Section Widget
  Widget _buildEmail(BuildContext context) {
    return CustomTextFormField(
        controller: emailController,
        hintText: "Email",
        textInputType: TextInputType.emailAddress,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 15.v, 10.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgMail,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 50.v));
  }

  /// Section Widget
  Widget _buildPassword(BuildContext context) {
    return CustomTextFormField(
        controller: passwordController,
        hintText: "Password",
        textInputAction: TextInputAction.done,
        textInputType: TextInputType.visiblePassword,
        prefix: Container(
            margin: EdgeInsets.fromLTRB(15.h, 15.v, 10.h, 15.v),
            child: CustomImageView(
                imagePath: ImageConstant.imgIconsLock,
                height: 20.adaptSize,
                width: 20.adaptSize)),
        prefixConstraints: BoxConstraints(maxHeight: 50.v),
        obscureText: true);
  }

  /// Section Widget
  Widget _buildLogIn(BuildContext context) {
    return CustomElevatedButton(
        text: "Log In",
        onPressed: () {
          onTapLogIn(context);
        });
  }

  /// Section Widget
  Widget _buildSignUp(BuildContext context) {
    return CustomElevatedButton(
        text: "Sign Up", buttonStyle: CustomButtonStyles.fillRedA);
  }

  /// Navigates to the lightDashboardContainerScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.lightDashboardContainerScreen);
  }
}
