import 'bloc/course_deets_bloc.dart';
import 'models/course_deets_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_elevated_button.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class CourseDeetsScreen extends StatelessWidget {
  const CourseDeetsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CourseDeetsBloc>(
        create: (context) => CourseDeetsBloc(
            CourseDeetsState(courseDeetsModelObj: CourseDeetsModel()))
          ..add(CourseDeetsInitialEvent()),
        child: CourseDeetsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<CourseDeetsBloc, CourseDeetsState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: appTheme.whiteA700,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 29.h, vertical: 40.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 18.v),
                        _buildDetailsAboutCourseRow(context),
                        SizedBox(height: 25.v),
                        _buildTenColumn(context),
                        SizedBox(height: 20.v),
                        Padding(
                            padding: EdgeInsets.only(left: 16.h),
                            child: Text("msg_intermediate_full".tr,
                                style: CustomTextStyles
                                    .titleLargeInterBlack900Bold)),
                        SizedBox(height: 9.v),
                        Container(
                            height: 20.v,
                            width: 203.h,
                            margin: EdgeInsets.only(left: 13.h),
                            child:
                                Stack(alignment: Alignment.center, children: [
                              Align(
                                  alignment: Alignment.bottomLeft,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: 24.h),
                                      child: Text("lbl_12_hours".tr,
                                          style: CustomTextStyles
                                              .titleSmallInterBlack900_1))),
                              Align(
                                  alignment: Alignment.center,
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        CustomImageView(
                                            imagePath:
                                                ImageConstant.imgOverflowMenu,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize),
                                        Spacer(),
                                        Opacity(
                                            opacity: 0.4,
                                            child: Container(
                                                height: 5.adaptSize,
                                                width: 5.adaptSize,
                                                margin: EdgeInsets.only(
                                                    top: 7.v, bottom: 8.v),
                                                decoration: BoxDecoration(
                                                    color: appTheme.gray600
                                                        .withOpacity(0.49),
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            2.h)))),
                                        CustomImageView(
                                            imagePath: ImageConstant.imgClock,
                                            height: 20.adaptSize,
                                            width: 20.adaptSize,
                                            margin: EdgeInsets.only(left: 8.h)),
                                        Padding(
                                            padding: EdgeInsets.only(left: 7.h),
                                            child: Text("lbl_6_months".tr,
                                                style: CustomTextStyles
                                                    .titleSmallInterBlack900_1))
                                      ]))
                            ])),
                        SizedBox(height: 26.v),
                        _buildFourteen(context),
                        SizedBox(height: 27.v),
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                width: 328.h,
                                margin:
                                    EdgeInsets.only(left: 28.h, right: 15.h),
                                child: Text("msg_lorem_ipsum_dolor".tr,
                                    maxLines: 5,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .bodyMediumBlack90013))),
                        SizedBox(height: 19.v),
                        Padding(
                            padding: EdgeInsets.only(left: 21.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgEyeOutline,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 21.h, bottom: 2.v),
                                  child: Text("msg_300_live_classes".tr,
                                      style: CustomTextStyles
                                          .labelLargeBlack90012))
                            ])),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 21.h),
                            child: _buildPersonOutlineRow(context,
                                personImage: ImageConstant.imgClockBlack900,
                                expertMentorsText: "msg_1_hour_per_class".tr)),
                        SizedBox(height: 16.v),
                        Padding(
                            padding: EdgeInsets.only(left: 21.h),
                            child: _buildPersonOutlineRow(context,
                                personImage: ImageConstant.imgPersonOutline,
                                expertMentorsText: "lbl_expert_mentors".tr)),
                        SizedBox(height: 13.v),
                        Padding(
                            padding: EdgeInsets.only(left: 21.h),
                            child: Row(children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgHelpCircleOutline,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.only(bottom: 1.v)),
                              Padding(
                                  padding:
                                      EdgeInsets.only(left: 21.h, top: 3.v),
                                  child: Text("msg_tests_and_practices".tr,
                                      style: CustomTextStyles
                                          .labelLargeBlack90012))
                            ]))
                      ])),
              bottomNavigationBar: _buildFiftySevenColumn(context)));
    });
  }

  /// Section Widget
  Widget _buildDetailsAboutCourseRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 4.h),
        child: Row(children: [
          Expanded(
              child: Row(children: [
            Padding(
                padding: EdgeInsets.only(top: 3.v, bottom: 2.v),
                child: CustomIconButton(
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                    padding: EdgeInsets.all(7.h),
                    onTap: () {
                      onTapBtnIconButton(context);
                    },
                    child:
                        CustomImageView(imagePath: ImageConstant.imgGroup24))),
            Padding(
                padding: EdgeInsets.only(left: 56.h),
                child: Text("msg_details_about_course".tr,
                    style: CustomTextStyles.titleLargeBlack900_2))
          ])),
          CustomImageView(
              imagePath: ImageConstant.imgBookmark,
              height: 15.v,
              width: 10.h,
              margin: EdgeInsets.only(left: 67.h, top: 7.v, bottom: 7.v))
        ]));
  }

  /// Section Widget
  Widget _buildTenColumn(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.symmetric(horizontal: 10.h),
            decoration: AppDecoration.fillOnPrimary
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              CustomImageView(
                  imagePath: ImageConstant.imgRectangle37,
                  height: 219.v,
                  width: 352.h,
                  radius: BorderRadius.circular(10.h)),
              SizedBox(height: 16.v),
              Padding(
                  padding: EdgeInsets.symmetric(horizontal: 18.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CustomImageView(
                            imagePath: ImageConstant.imgPauseCircleOutline,
                            height: 27.adaptSize,
                            width: 27.adaptSize),
                        Padding(
                            padding: EdgeInsets.only(
                                left: 12.h, top: 4.v, bottom: 3.v),
                            child: Text("lbl_preview".tr,
                                style:
                                    CustomTextStyles.titleSmallInterBlack900)),
                        Spacer(),
                        CustomImageView(
                            imagePath: ImageConstant.imgFavorite,
                            height: 21.v,
                            width: 25.h,
                            margin: EdgeInsets.symmetric(vertical: 3.v)),
                        CustomImageView(
                            imagePath: ImageConstant.imgVolumeMuteOutline,
                            height: 25.adaptSize,
                            width: 25.adaptSize,
                            margin: EdgeInsets.only(left: 12.h))
                      ])),
              SizedBox(height: 16.v)
            ])));
  }

  /// Section Widget
  Widget _buildFourteen(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Container(
            margin: EdgeInsets.only(left: 9.h, right: 12.h),
            padding: EdgeInsets.all(5.h),
            decoration: AppDecoration.fillGray300
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomElevatedButton(
                      height: 30.v,
                      width: 91.h,
                      text: "lbl_details".tr,
                      buttonStyle: CustomButtonStyles.outlineBlack,
                      buttonTextStyle:
                          CustomTextStyles.labelLargeInterBlack900Bold),
                  Padding(
                      padding:
                          EdgeInsets.only(top: 7.v, right: 17.h, bottom: 6.v),
                      child: Text("lbl_mentors".tr,
                          style: CustomTextStyles.labelLargeInter))
                ])));
  }

  /// Section Widget
  Widget _buildFiftySevenColumn(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 76.h, right: 76.h, bottom: 27.v),
        decoration: AppDecoration.fillBlueGray,
        child: CustomElevatedButton(
            height: 51.v,
            text: "lbl_get_started".tr,
            buttonStyle: CustomButtonStyles.fillPrimaryTL10,
            buttonTextStyle: CustomTextStyles.titleLargeOnPrimary_1));
  }

  /// Common widget
  Widget _buildPersonOutlineRow(
    BuildContext context, {
    required String personImage,
    required String expertMentorsText,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: personImage,
          height: 20.adaptSize,
          width: 20.adaptSize,
          margin: EdgeInsets.only(bottom: 2.v)),
      Padding(
          padding: EdgeInsets.only(left: 21.h, top: 4.v),
          child: Text(expertMentorsText,
              style: CustomTextStyles.labelLargeBlack90012
                  .copyWith(color: appTheme.black900.withOpacity(0.7))))
    ]);
  }

  /// Navigates to the chooseSubjectScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.chooseSubjectScreen,
    );
  }
}
