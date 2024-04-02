import 'bloc/choose_subject_bloc.dart';
import 'models/choose_subject_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_elevated_button.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:ayush_s_application13/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class ChooseSubjectScreen extends StatelessWidget {
  const ChooseSubjectScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChooseSubjectBloc>(
        create: (context) => ChooseSubjectBloc(
            ChooseSubjectState(chooseSubjectModelObj: ChooseSubjectModel()))
          ..add(ChooseSubjectInitialEvent()),
        child: ChooseSubjectScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 58.v),
                child: Column(children: [
                  _buildViewRow(context),
                  SizedBox(height: 52.v),
                  Text("msg_select_your_subject".tr,
                      style: CustomTextStyles.headlineLargeBlack900),
                  SizedBox(height: 59.v),
                  _buildFortyRow(context),
                  SizedBox(height: 50.v),
                  _buildThirtyEightRow(context),
                  SizedBox(height: 50.v),
                  _buildThirtySevenRow(context),
                  SizedBox(height: 50.v),
                  _buildThirtySixRow(context),
                  SizedBox(height: 96.v),
                  CustomElevatedButton(
                      height: 54.v,
                      text: "lbl_let_s_go".tr,
                      margin: EdgeInsets.only(left: 57.h, right: 46.h),
                      buttonTextStyle:
                          CustomTextStyles.titleLargeInterOnPrimary,
                      onPressed: () {
                        onTapLetsGo(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  Widget _buildViewRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 3.v),
                  child: CustomIconButton(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      padding: EdgeInsets.all(7.h),
                      onTap: () {
                        onTapBtnIconButton(context);
                      },
                      child: CustomImageView(
                          imagePath: ImageConstant.imgGroup24))),
              Container(
                  height: 12.v,
                  width: 286.h,
                  margin: EdgeInsets.only(left: 13.h, top: 6.v, bottom: 9.v),
                  decoration: BoxDecoration(
                      color: appTheme.deepOrangeA100,
                      borderRadius: BorderRadius.circular(5.h))),
              Padding(
                  padding: EdgeInsets.only(left: 21.h, top: 2.v),
                  child: Text("lbl_skip".tr,
                      style: CustomTextStyles.titleLargeInterBlack900))
            ]));
  }

  /// Section Widget
  Widget _buildFortyRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 13.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgUnsplashRflgrtzu3cw,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(10.h)),
              Expanded(
                  child: BlocSelector<ChooseSubjectBloc, ChooseSubjectState,
                          String?>(
                      selector: (state) => state.radioGroup,
                      builder: (context, radioGroup) {
                        return Padding(
                            padding: EdgeInsets.fromLTRB(16.h, 13.v, 3.h, 11.v),
                            child: CustomRadioButton(
                                width: 256.h,
                                text: "lbl_chemistry".tr,
                                value: "lbl_chemistry".tr ?? "",
                                groupValue: radioGroup,
                                textStyle:
                                    CustomTextStyles.titleLargeInterBlack900_1,
                                isRightCheck: true,
                                onChange: (value) {
                                  context.read<ChooseSubjectBloc>().add(
                                      ChangeRadioButtonEvent(value: value));
                                }));
                      }))
            ]));
  }

  /// Section Widget
  Widget _buildThirtyEightRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 13.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgUnsplash05aKdoh6hw,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(10.h)),
              Expanded(
                  child: BlocSelector<ChooseSubjectBloc, ChooseSubjectState,
                          String?>(
                      selector: (state) => state.radioGroup1,
                      builder: (context, radioGroup1) {
                        return Padding(
                            padding: EdgeInsets.fromLTRB(16.h, 12.v, 3.h, 12.v),
                            child: CustomRadioButton(
                                width: 256.h,
                                text: "lbl_math".tr,
                                value: "lbl_math".tr ?? "",
                                groupValue: radioGroup1,
                                textStyle:
                                    CustomTextStyles.titleLargeInterBlack900_1,
                                isRightCheck: true,
                                onChange: (value) {
                                  context.read<ChooseSubjectBloc>().add(
                                      ChangeRadioButton1Event(value: value));
                                }));
                      }))
            ]));
  }

  /// Section Widget
  Widget _buildThirtySevenRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 13.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgUnsplashAza1hlbjbbo,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(10.h)),
              Expanded(
                  child: BlocSelector<ChooseSubjectBloc, ChooseSubjectState,
                          String?>(
                      selector: (state) => state.radioGroup2,
                      builder: (context, radioGroup2) {
                        return Padding(
                            padding: EdgeInsets.fromLTRB(16.h, 14.v, 3.h, 10.v),
                            child: CustomRadioButton(
                                width: 256.h,
                                text: "lbl_english".tr,
                                value: "lbl_english".tr ?? "",
                                groupValue: radioGroup2,
                                textStyle:
                                    CustomTextStyles.titleLargeInterBlack900_1,
                                isRightCheck: true,
                                onChange: (value) {
                                  context.read<ChooseSubjectBloc>().add(
                                      ChangeRadioButton2Event(value: value));
                                }));
                      }))
            ]));
  }

  /// Section Widget
  Widget _buildThirtySixRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 15.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 13.v),
        decoration: AppDecoration.fillOnPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgUnsplash1ppyuzcegI,
                  height: 50.adaptSize,
                  width: 50.adaptSize,
                  radius: BorderRadius.circular(10.h)),
              Expanded(
                  child: BlocSelector<ChooseSubjectBloc, ChooseSubjectState,
                          String?>(
                      selector: (state) => state.radioGroup3,
                      builder: (context, radioGroup3) {
                        return Padding(
                            padding: EdgeInsets.fromLTRB(16.h, 14.v, 3.h, 10.v),
                            child: CustomRadioButton(
                                width: 256.h,
                                text: "lbl_biology".tr,
                                value: "lbl_biology".tr ?? "",
                                groupValue: radioGroup3,
                                textStyle:
                                    CustomTextStyles.titleLargeInterBlack900_1,
                                isRightCheck: true,
                                onChange: (value) {
                                  context.read<ChooseSubjectBloc>().add(
                                      ChangeRadioButton3Event(value: value));
                                }));
                      }))
            ]));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }

  /// Navigates to the courseDeetsScreen when the action is triggered.
  onTapLetsGo(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.courseDeetsScreen,
    );
  }
}
