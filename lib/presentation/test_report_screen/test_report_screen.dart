import 'bloc/test_report_bloc.dart';
import 'models/test_report_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_elevated_button.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class TestReportScreen extends StatelessWidget {
  const TestReportScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TestReportBloc>(
        create: (context) => TestReportBloc(
            TestReportState(testReportModelObj: TestReportModel()))
          ..add(TestReportInitialEvent()),
        child: TestReportScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<TestReportBloc, TestReportState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 20.h, vertical: 46.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 9.v),
                        Padding(
                            padding: EdgeInsets.only(left: 11.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 3.v, bottom: 10.v),
                                      child: CustomIconButton(
                                          height: 24.adaptSize,
                                          width: 24.adaptSize,
                                          padding: EdgeInsets.all(7.h),
                                          child: CustomImageView(
                                              imagePath:
                                                  ImageConstant.imgGroup24))),
                                  Padding(
                                      padding: EdgeInsets.only(left: 83.h),
                                      child: Text("lbl_test_report".tr,
                                          style: theme.textTheme.headlineSmall))
                                ])),
                        SizedBox(height: 63.v),
                        _buildCircleProgressBarStack(context),
                        SizedBox(height: 45.v),
                        Padding(
                            padding: EdgeInsets.only(left: 37.h, right: 78.h),
                            child: Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Container(
                                      height: 15.adaptSize,
                                      width: 15.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 2.v, bottom: 3.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.purple400,
                                          borderRadius:
                                              BorderRadius.circular(7.h))),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 9.h, bottom: 1.v),
                                      child: Text("lbl_incorrect".tr,
                                          style: CustomTextStyles
                                              .bodyMediumBlack90013_1)),
                                  Container(
                                      width: 74.h,
                                      margin: EdgeInsets.only(
                                          left: 27.h, bottom: 1.v),
                                      child: Row(children: [
                                        Container(
                                            height: 15.adaptSize,
                                            width: 15.adaptSize,
                                            margin: EdgeInsets.symmetric(
                                                vertical: 2.v),
                                            decoration: BoxDecoration(
                                                color: appTheme.lightBlue300,
                                                borderRadius:
                                                    BorderRadius.circular(
                                                        7.h))),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 10.h),
                                            child: Text("lbl_correct".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumBlack90013_1))
                                      ])),
                                  Spacer(),
                                  Container(
                                      height: 15.adaptSize,
                                      width: 15.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 2.v, bottom: 3.v),
                                      decoration: BoxDecoration(
                                          color: appTheme.gray200,
                                          borderRadius:
                                              BorderRadius.circular(7.h))),
                                  Padding(
                                      padding: EdgeInsets.only(left: 13.h),
                                      child: Text("lbl_skip".tr,
                                          style: CustomTextStyles
                                              .bodyMediumBlack90013_1))
                                ])),
                        SizedBox(height: 69.v),
                        _buildTwoColumn(context)
                      ])),
              bottomNavigationBar: _buildSeeAnswersButton(context)));
    });
  }

  /// Section Widget
  Widget _buildCircleProgressBarStack(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: SizedBox(
            height: 173.adaptSize,
            width: 173.adaptSize,
            child: Stack(alignment: Alignment.center, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      height: 125.adaptSize,
                      width: 125.adaptSize,
                      decoration: BoxDecoration(
                          color: appTheme.gray200,
                          borderRadius: BorderRadius.circular(62.h)))),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 173.adaptSize,
                      width: 173.adaptSize,
                      child: CircularProgressIndicator(value: 0.5))),
              Align(
                  alignment: Alignment.center,
                  child: SizedBox(
                      height: 173.adaptSize,
                      width: 173.adaptSize,
                      child: CircularProgressIndicator(
                          value: 0.5, strokeWidth: 10.h))),
              Align(
                  alignment: Alignment.center,
                  child:
                      Text("lbl_75".tr, style: theme.textTheme.headlineSmall))
            ])));
  }

  /// Section Widget
  Widget _buildTwoColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 3.h),
        padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 36.v),
        decoration: AppDecoration.fillDeepPurple
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.center,
                  child: Padding(
                      padding: EdgeInsets.only(left: 10.h, right: 20.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text("lbl_total_questions".tr,
                                style: theme.textTheme.titleLarge),
                            Text("lbl_20".tr, style: theme.textTheme.titleLarge)
                          ]))),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, right: 24.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 1.v),
                            child: Text("lbl_answered".tr,
                                style: theme.textTheme.titleLarge)),
                        Text("lbl_16".tr, style: theme.textTheme.titleLarge)
                      ])),
              SizedBox(height: 12.v),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, right: 31.h),
                  child: _buildIncorrectRow(context,
                      incorrectText: "lbl_skipped".tr, numberText: "lbl_4".tr)),
              SizedBox(height: 8.v),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, right: 25.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text("lbl_correct".tr,
                                style: theme.textTheme.titleLarge)),
                        Padding(
                            padding: EdgeInsets.only(bottom: 3.v),
                            child: Text("lbl_13".tr,
                                style: theme.textTheme.titleLarge))
                      ])),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(left: 10.h, right: 31.h),
                  child: _buildIncorrectRow(context,
                      incorrectText: "lbl_incorrect".tr,
                      numberText: "lbl_3".tr)),
              SizedBox(height: 10.v),
              Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(top: 3.v),
                            child: Text("lbl_time".tr,
                                style: theme.textTheme.titleLarge)),
                        Padding(
                            padding: EdgeInsets.only(bottom: 3.v),
                            child: Text("lbl_17mins".tr,
                                style: theme.textTheme.titleLarge))
                      ])),
              SizedBox(height: 5.v)
            ]));
  }

  /// Section Widget
  Widget _buildSeeAnswersButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_see_answers".tr,
        margin: EdgeInsets.only(left: 62.h, right: 63.h, bottom: 29.v),
        onPressed: () {
          onTapSeeAnswersButton(context);
        });
  }

  /// Common widget
  Widget _buildIncorrectRow(
    BuildContext context, {
    required String incorrectText,
    required String numberText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(incorrectText,
          style: theme.textTheme.titleLarge!.copyWith(color: appTheme.gray800)),
      Text(numberText,
          style: theme.textTheme.titleLarge!.copyWith(color: appTheme.gray800))
    ]);
  }

  /// Navigates to the solutionsScreen when the action is triggered.
  onTapSeeAnswersButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.solutionsScreen,
    );
  }
}
