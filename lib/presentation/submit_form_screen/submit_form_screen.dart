import 'bloc/submit_form_bloc.dart';
import 'models/submit_form_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_elevated_button.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:ayush_s_application13/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class SubmitFormScreen extends StatelessWidget {
  const SubmitFormScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<SubmitFormBloc>(
        create: (context) => SubmitFormBloc(
            SubmitFormState(submitFormModelObj: SubmitFormModel()))
          ..add(SubmitFormInitialEvent()),
        child: SubmitFormScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                height: mediaQueryData.size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.center, children: [
                  Align(
                      alignment: Alignment.center,
                      child: Padding(
                          padding: EdgeInsets.only(left: 32.h, right: 41.h),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Align(
                                    alignment: Alignment.centerRight,
                                    child: Padding(
                                        padding: EdgeInsets.only(right: 124.h),
                                        child: Text("lbl_biology".tr,
                                            style: CustomTextStyles
                                                .titleLargeBlack900Bold))),
                                SizedBox(height: 30.v),
                                Text("lbl_question_20_20".tr,
                                    style: CustomTextStyles
                                        .titleMediumBlack900Medium),
                                SizedBox(height: 12.v),
                                Container(
                                    width: 302.h,
                                    margin: EdgeInsets.only(right: 54.h),
                                    child: Text("msg_what_is_the_part".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles.bodyMedium15)),
                                SizedBox(height: 30.v),
                                _buildCellMembraneRadioGroup(context),
                                SizedBox(height: 35.v),
                                _buildFortySixRow(context),
                                SizedBox(height: 35.v),
                                _buildFortySevenRow(context),
                                SizedBox(height: 86.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Container(
                                        width: 305.h,
                                        margin: EdgeInsets.only(
                                            left: 30.h, right: 22.h),
                                        padding: EdgeInsets.symmetric(
                                            horizontal: 119.h, vertical: 12.v),
                                        decoration: AppDecoration.fillPrimary
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder20),
                                        child: Text("lbl_next".tr,
                                            style: CustomTextStyles
                                                .headlineSmallOnPrimary))),
                                SizedBox(height: 27.v),
                                Align(
                                    alignment: Alignment.center,
                                    child: Text("lbl_skip".tr,
                                        style: CustomTextStyles
                                            .headlineSmallGray600))
                              ]))),
                  Align(
                      alignment: Alignment.center,
                      child: Container(
                          decoration: AppDecoration.fillBlueGrayF,
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                SizedBox(height: 69.v),
                                Padding(
                                    padding: EdgeInsets.only(left: 40.h),
                                    child: CustomIconButton(
                                        height: 24.adaptSize,
                                        width: 24.adaptSize,
                                        padding: EdgeInsets.all(7.h),
                                        decoration:
                                            IconButtonStyleHelper.outlineGray,
                                        onTap: () {
                                          onTapBtnIconButton(context);
                                        },
                                        child: CustomImageView(
                                            imagePath:
                                                ImageConstant.imgGroup24))),
                                Spacer(),
                                Container(
                                    width: double.maxFinite,
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 32.h, vertical: 26.v),
                                    decoration: AppDecoration.fillOnPrimary
                                        .copyWith(
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder20),
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        children: [
                                          CustomImageView(
                                              imagePath: ImageConstant.imgClose,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize,
                                              alignment: Alignment.centerLeft),
                                          SizedBox(height: 24.v),
                                          CustomImageView(
                                              imagePath:
                                                  ImageConstant.img71086841,
                                              height: 134.v,
                                              width: 118.h),
                                          SizedBox(height: 39.v),
                                          Text("lbl_submit_exam".tr,
                                              style: theme
                                                  .textTheme.headlineSmall),
                                          SizedBox(height: 2.v),
                                          Container(
                                              width: 323.h,
                                              margin: EdgeInsets.only(
                                                  left: 23.h, right: 18.h),
                                              child: Text(
                                                  "msg_are_you_sure_you".tr,
                                                  maxLines: 2,
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.center,
                                                  style: CustomTextStyles
                                                      .titleLargeGray600)),
                                          SizedBox(height: 33.v),
                                          CustomElevatedButton(
                                              text: "lbl_yes".tr,
                                              margin: EdgeInsets.only(
                                                  left: 30.h, right: 31.h),
                                              onPressed: () {
                                                onTapYes(context);
                                              }),
                                          SizedBox(height: 8.v)
                                        ]))
                              ])))
                ]))));
  }

  /// Section Widget
  Widget _buildCellMembraneRadioGroup(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 8.h),
        child: BlocBuilder<SubmitFormBloc, SubmitFormState>(
            builder: (context, state) {
          return state.submitFormModelObj!.radioList.isNotEmpty
              ? Column(children: [
                  CustomRadioButton(
                      text: "msg_a_cell_membrane".tr,
                      value: state.submitFormModelObj?.radioList[0] ?? "",
                      groupValue: state.radioGroup,
                      padding: EdgeInsets.fromLTRB(26.h, 23.v, 30.h, 23.v),
                      onChange: (value) {
                        context
                            .read<SubmitFormBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  Padding(
                      padding: EdgeInsets.only(top: 35.v),
                      child: CustomRadioButton(
                          text: "lbl_b_chloroplast".tr,
                          value: state.submitFormModelObj?.radioList[1] ?? "",
                          groupValue: state.radioGroup,
                          padding: EdgeInsets.fromLTRB(26.h, 25.v, 30.h, 25.v),
                          decoration: RadioStyleHelper.outlineBlack,
                          onChange: (value) {
                            context
                                .read<SubmitFormBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          }))
                ])
              : Container();
        }));
  }

  /// Section Widget
  Widget _buildFortySixRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 25.v),
        decoration: AppDecoration.fillCyan
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
              height: 30.adaptSize,
              width: 30.adaptSize,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.h),
                  border: Border.all(color: appTheme.black900, width: 3.h))),
          Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_c".tr,
                        style: CustomTextStyles.titleLargeGray600_1),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "lbl_nucleus".tr,
                        style: CustomTextStyles.titleLargeBlack900)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Section Widget
  Widget _buildFortySevenRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 8.h),
        padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 25.v),
        decoration: AppDecoration.fillCyan
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          Container(
              height: 30.adaptSize,
              width: 30.adaptSize,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.h),
                  border: Border.all(color: appTheme.black900, width: 3.h))),
          Padding(
              padding: EdgeInsets.only(left: 26.h),
              child: RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "lbl_d2".tr,
                        style: CustomTextStyles.titleLargeGray600_1),
                    TextSpan(text: " "),
                    TextSpan(
                        text: "lbl_mitochondria".tr,
                        style: CustomTextStyles.titleLargeBlack900)
                  ]),
                  textAlign: TextAlign.left))
        ]));
  }

  /// Navigates to the testDeclarationScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.testDeclarationScreen,
    );
  }

  /// Navigates to the testReportScreen when the action is triggered.
  onTapYes(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.testReportScreen,
    );
  }
}
