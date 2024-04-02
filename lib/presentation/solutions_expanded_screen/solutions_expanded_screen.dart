import 'bloc/solutions_expanded_bloc.dart';
import 'models/solutions_expanded_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_checkbox_button.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class SolutionsExpandedScreen extends StatelessWidget {
  const SolutionsExpandedScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SolutionsExpandedBloc>(
        create: (context) => SolutionsExpandedBloc(SolutionsExpandedState(
            solutionsExpandedModelObj: SolutionsExpandedModel()))
          ..add(SolutionsExpandedInitialEvent()),
        child: SolutionsExpandedScreen());
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
                              padding: EdgeInsets.only(left: 27.h, right: 17.h),
                              child: Column(children: [
                                _buildSolutionsRow(context),
                                SizedBox(height: 58.v),
                                Container(
                                    width: 375.h,
                                    margin: EdgeInsets.only(right: 10.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 26.h, vertical: 22.v),
                                    decoration: AppDecoration.fillBluegray50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildQuestion1CheckBox(context),
                                          SizedBox(height: 11.v),
                                          Container(
                                              width: 252.h,
                                              margin: EdgeInsets.only(
                                                  left: 3.h, right: 65.h),
                                              child: Text(
                                                  "msg_lorem_ipsum_dolor3".tr,
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          SizedBox(height: 42.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16.h),
                                              child: Text("lbl_answer".tr,
                                                  style: theme
                                                      .textTheme.titleSmall)),
                                          SizedBox(height: 17.v),
                                          Align(
                                              alignment: Alignment.center,
                                              child: Container(
                                                  width: 298.h,
                                                  margin: EdgeInsets.only(
                                                      left: 10.h, right: 12.h),
                                                  child: Text(
                                                      "msg_lorem_ipsum_dolor4"
                                                          .tr,
                                                      maxLines: 11,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: theme.textTheme
                                                          .bodySmall))),
                                          SizedBox(height: 82.v)
                                        ])),
                                SizedBox(height: 34.v),
                                Container(
                                    width: 375.h,
                                    margin: EdgeInsets.only(right: 10.h),
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 26.h, vertical: 20.v),
                                    decoration: AppDecoration.fillBluegray50
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        children: [
                                          _buildQuestion2CheckBox(context),
                                          SizedBox(height: 11.v),
                                          Container(
                                              width: 255.h,
                                              margin: EdgeInsets.only(
                                                  left: 3.h, right: 62.h),
                                              child: Text(
                                                  "msg_lorem_ipsum_dolor3".tr,
                                                  maxLines: 3,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  style: theme
                                                      .textTheme.bodySmall)),
                                          SizedBox(height: 35.v),
                                          Padding(
                                              padding:
                                                  EdgeInsets.only(left: 16.h),
                                              child: Text("lbl_answer".tr,
                                                  style: theme
                                                      .textTheme.titleSmall)),
                                          SizedBox(height: 20.v),
                                          Align(
                                              alignment: Alignment.center,
                                              child: SizedBox(
                                                  height: 69.v,
                                                  width: 299.h,
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      children: [
                                                        CustomImageView(
                                                            imagePath:
                                                                ImageConstant
                                                                    .imgCheckmark,
                                                            height:
                                                                21.adaptSize,
                                                            width: 21.adaptSize,
                                                            alignment: Alignment
                                                                .bottomRight),
                                                        Align(
                                                            alignment: Alignment
                                                                .topCenter,
                                                            child: SizedBox(
                                                                width: 298.h,
                                                                child: Text(
                                                                    "msg_lorem_ipsum_dolor4"
                                                                        .tr,
                                                                    maxLines: 3,
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    style: theme
                                                                        .textTheme
                                                                        .bodySmall)))
                                                      ]))),
                                          SizedBox(height: 20.v)
                                        ]))
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
          Expanded(
              child: Padding(
                  padding: EdgeInsets.only(left: 86.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text("lbl_solutions".tr,
                            style: theme.textTheme.headlineSmall),
                        GestureDetector(
                            onTap: () {
                              onTapTxtCollapseAll(context);
                            },
                            child: Padding(
                                padding: EdgeInsets.only(
                                    left: 61.h, top: 12.v, bottom: 5.v),
                                child: Text("lbl_collapse_all".tr,
                                    style: CustomTextStyles.bodyMediumPrimary
                                        .copyWith(
                                            decoration:
                                                TextDecoration.underline))))
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildQuestion1CheckBox(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: BlocSelector<SolutionsExpandedBloc, SolutionsExpandedState,
                    bool?>(
                selector: (state) => state.question1CheckBox,
                builder: (context, question1CheckBox) {
                  return CustomCheckboxButton(
                      alignment: Alignment.centerRight,
                      width: 305.h,
                      text: "lbl_question_1_20".tr,
                      value: question1CheckBox,
                      textStyle: theme.textTheme.titleSmall,
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<SolutionsExpandedBloc>()
                            .add(ChangeCheckBoxEvent(value: value));
                      });
                })));
  }

  /// Section Widget
  Widget _buildQuestion2CheckBox(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Padding(
            padding: EdgeInsets.only(left: 16.h),
            child: BlocSelector<SolutionsExpandedBloc, SolutionsExpandedState,
                    bool?>(
                selector: (state) => state.question2CheckBox,
                builder: (context, question2CheckBox) {
                  return CustomCheckboxButton(
                      alignment: Alignment.centerRight,
                      width: 305.h,
                      text: "lbl_question_2_20".tr,
                      value: question2CheckBox,
                      textStyle: theme.textTheme.titleSmall,
                      isRightCheck: true,
                      onChange: (value) {
                        context
                            .read<SolutionsExpandedBloc>()
                            .add(ChangeCheckBox1Event(value: value));
                      });
                })));
  }

  /// Navigates to the solutionsScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.solutionsScreen,
    );
  }

  /// Navigates to the solutionsScreen when the action is triggered.
  onTapTxtCollapseAll(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.solutionsScreen,
    );
  }
}
