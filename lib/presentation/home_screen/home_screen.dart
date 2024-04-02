import 'bloc/home_bloc.dart';
import 'models/home_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<HomeBloc>(
        create: (context) => HomeBloc(HomeState(homeModelObj: HomeModel()))
          ..add(HomeInitialEvent()),
        child: HomeScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<HomeBloc, HomeState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.black900,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 18.h, vertical: 31.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 20.v),
                        _buildWhatAreYouHere(context),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 38.h),
                            child: Text("lbl_to_learn".tr,
                                style: CustomTextStyles
                                    .titleLargeInterOnPrimaryExtraBold)),
                        SizedBox(height: 14.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgLearn1,
                            height: 185.v,
                            width: 372.h,
                            radius: BorderRadius.circular(30.h),
                            alignment: Alignment.center,
                            onTap: () {
                              onTapImgLearnOne(context);
                            }),
                        SizedBox(height: 28.v),
                        Padding(
                            padding: EdgeInsets.only(left: 38.h),
                            child: Text("lbl_to_get_a_job".tr,
                                style: CustomTextStyles
                                    .titleLargeInterOnPrimaryExtraBold)),
                        SizedBox(height: 11.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgJob1,
                            height: 217.v,
                            width: 370.h,
                            radius: BorderRadius.circular(30.h),
                            alignment: Alignment.center),
                        SizedBox(height: 34.v),
                        Padding(
                            padding: EdgeInsets.only(left: 38.h),
                            child: Text("lbl_to_donate".tr,
                                style: CustomTextStyles
                                    .titleLargeInterOnPrimaryExtraBold)),
                        SizedBox(height: 7.v),
                        CustomImageView(
                            imagePath: ImageConstant.imgDonate1,
                            height: 209.v,
                            width: 372.h,
                            radius: BorderRadius.circular(30.h),
                            alignment: Alignment.center)
                      ]))));
    });
  }

  /// Section Widget
  Widget _buildWhatAreYouHere(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 11.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("msg_what_are_you_here".tr,
              style: CustomTextStyles.headlineLargeJaldi),
          Padding(
              padding: EdgeInsets.only(top: 17.v, bottom: 14.v),
              child: Text("lbl_log_out".tr,
                  style: CustomTextStyles.bodyMediumInterDeeppurple10001
                      .copyWith(decoration: TextDecoration.underline)))
        ]));
  }

  /// Navigates to the chooseSubjectScreen when the action is triggered.
  onTapImgLearnOne(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chooseSubjectScreen,
    );
  }
}
