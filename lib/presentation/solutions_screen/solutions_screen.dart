import 'bloc/solutions_bloc.dart';
import 'models/solutions_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_checkbox_button.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SolutionsScreen extends StatelessWidget {
  const SolutionsScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SolutionsBloc>(
        create: (context) =>
            SolutionsBloc(SolutionsState(solutionsModelObj: SolutionsModel()))
              ..add(SolutionsInitialEvent()),
        child: SolutionsScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: theme.colorScheme.primaryContainer,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 59.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 27.h, right: 21.h),
                              child: Column(children: [
                                _buildSolutionsRow(context),
                                SizedBox(height: 58.v),
                                _buildFiftyRow(context),
                                SizedBox(height: 28.v),
                                _buildEnglishKeyTwoCheckBox(context),
                                SizedBox(height: 28.v),
                                _buildEnglishKeyTwoCheckBox1(context),
                                SizedBox(height: 28.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 6.h),
                                    child: _buildFiftySixRow(context,
                                        text: "msg_lorem_ipsum_dolor3".tr)),
                                SizedBox(height: 28.v),
                                _buildEnglishKeyTwoCheckBox2(context),
                                SizedBox(height: 28.v),
                                _buildEnglishKeyTwoCheckBox3(context),
                                SizedBox(height: 28.v),
                                Padding(
                                    padding: EdgeInsets.only(right: 6.h),
                                    child: _buildFiftySixRow(context,
                                        text: "msg_lorem_ipsum_dolor3".tr)),
                                SizedBox(height: 59.v),
                                CustomImageView(
                                    imagePath: ImageConstant.imgCheckmark,
                                    height: 21.adaptSize,
                                    width: 21.adaptSize,
                                    alignment: Alignment.centerRight,
                                    margin: EdgeInsets.only(right: 40.h))
                              ]))))
                ]))));
  }

  /// Section Widget
  Widget _buildSolutionsRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 17.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
              child: CustomIconButton(
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  padding: EdgeInsets.all(7.h),
                  onTap: () {
                    onTapBtnIconButton(context);
                  },
                  child: CustomImageView(imagePath: ImageConstant.imgGroup24))),
          Spacer(flex: 56),
          Text("lbl_solutions".tr, style: theme.textTheme.headlineSmall),
          Spacer(flex: 43),
          GestureDetector(
              onTap: () {
                onTapTxtExpandAll(context);
              },
              child: Padding(
                  padding: EdgeInsets.only(top: 12.v, bottom: 5.v),
                  child: Text("lbl_expand_all".tr,
                      style: CustomTextStyles.bodyMediumPrimary
                          .copyWith(decoration: TextDecoration.underline))))
        ]));
  }

  /// Section Widget
  Widget _buildFiftyRow(BuildContext context) {
    return GestureDetector(
        onTap: () {
          onTapFiftyRow(context);
        },
        child: Container(
            margin: EdgeInsets.only(right: 6.h),
            padding: EdgeInsets.symmetric(horizontal: 25.h, vertical: 10.v),
            decoration: AppDecoration.fillBluegray50
                .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  Expanded(
                      child: Container(
                          width: 252.h,
                          margin: EdgeInsets.only(top: 1.v),
                          child: Text("msg_lorem_ipsum_dolor3".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: theme.textTheme.bodySmall))),
                  CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 21.adaptSize,
                      width: 21.adaptSize,
                      margin: EdgeInsets.fromLTRB(48.h, 11.v, 1.h, 24.v))
                ])));
  }

  /// Section Widget
  Widget _buildEnglishKeyTwoCheckBox(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: BlocSelector<SolutionsBloc, SolutionsState, bool?>(
            selector: (state) => state.englishKeyTwoCheckBox,
            builder: (context, englishKeyTwoCheckBox) {
              return CustomCheckboxButton(
                  width: 375.h,
                  text: "msg_lorem_ipsum_dolor3".tr,
                  isExpandedText: true,
                  value: englishKeyTwoCheckBox,
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 10.v),
                  isRightCheck: true,
                  onChange: (value) {
                    context
                        .read<SolutionsBloc>()
                        .add(ChangeCheckBoxEvent(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildEnglishKeyTwoCheckBox1(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: BlocSelector<SolutionsBloc, SolutionsState, bool?>(
            selector: (state) => state.englishKeyTwoCheckBox1,
            builder: (context, englishKeyTwoCheckBox1) {
              return CustomCheckboxButton(
                  width: 375.h,
                  text: "msg_lorem_ipsum_dolor3".tr,
                  isExpandedText: true,
                  value: englishKeyTwoCheckBox1,
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 10.v),
                  isRightCheck: true,
                  onChange: (value) {
                    context
                        .read<SolutionsBloc>()
                        .add(ChangeCheckBox1Event(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildEnglishKeyTwoCheckBox2(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: BlocSelector<SolutionsBloc, SolutionsState, bool?>(
            selector: (state) => state.englishKeyTwoCheckBox2,
            builder: (context, englishKeyTwoCheckBox2) {
              return CustomCheckboxButton(
                  width: 375.h,
                  text: "msg_lorem_ipsum_dolor3".tr,
                  isExpandedText: true,
                  value: englishKeyTwoCheckBox2,
                  padding:
                      EdgeInsets.symmetric(horizontal: 22.h, vertical: 10.v),
                  isRightCheck: true,
                  onChange: (value) {
                    context
                        .read<SolutionsBloc>()
                        .add(ChangeCheckBox2Event(value: value));
                  });
            }));
  }

  /// Section Widget
  Widget _buildEnglishKeyTwoCheckBox3(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 6.h),
        child: BlocSelector<SolutionsBloc, SolutionsState, bool?>(
            selector: (state) => state.englishKeyTwoCheckBox3,
            builder: (context, englishKeyTwoCheckBox3) {
              return CustomCheckboxButton(
                  width: 375.h,
                  text: "msg_lorem_ipsum_dolor3".tr,
                  isExpandedText: true,
                  value: englishKeyTwoCheckBox3,
                  padding:
                      EdgeInsets.symmetric(horizontal: 21.h, vertical: 10.v),
                  isRightCheck: true,
                  onChange: (value) {
                    context
                        .read<SolutionsBloc>()
                        .add(ChangeCheckBox3Event(value: value));
                  });
            }));
  }

  /// Common widget
  Widget _buildFiftySixRow(
    BuildContext context, {
    required String text,
  }) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 22.h, vertical: 10.v),
        decoration: AppDecoration.fillBluegray50
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(mainAxisSize: MainAxisSize.min, children: [
          Expanded(
              child: Container(
                  width: 255.h,
                  margin: EdgeInsets.only(top: 1.v),
                  child: Text(text,
                      maxLines: 3,
                      overflow: TextOverflow.ellipsis,
                      style: theme.textTheme.bodySmall!
                          .copyWith(color: appTheme.black900)))),
          Padding(
              padding: EdgeInsets.fromLTRB(42.h, 19.v, 5.h, 11.v),
              child: CustomIconButton(
                  height: 26.adaptSize,
                  width: 26.adaptSize,
                  padding: EdgeInsets.all(2.h),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgCloseCircleSharp)))
        ]));
  }

  /// Navigates to the testReportScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.testReportScreen,
    );
  }

  /// Navigates to the solutionsExpandedScreen when the action is triggered.
  onTapTxtExpandAll(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.solutionsExpandedScreen,
    );
  }

  /// Navigates to the solutionsExpandedScreen when the action is triggered.
  onTapFiftyRow(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.solutionsExpandedScreen,
    );
  }
}
