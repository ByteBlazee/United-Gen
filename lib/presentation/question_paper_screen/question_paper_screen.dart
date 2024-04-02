import 'bloc/question_paper_bloc.dart';
import 'models/question_paper_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_elevated_button.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:ayush_s_application13/widgets/custom_radio_button.dart';
import 'package:flutter/material.dart';

class QuestionPaperScreen extends StatelessWidget {
  const QuestionPaperScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<QuestionPaperBloc>(
        create: (context) => QuestionPaperBloc(
            QuestionPaperState(questionPaperModelObj: QuestionPaperModel()))
          ..add(QuestionPaperInitialEvent()),
        child: QuestionPaperScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 31.h, vertical: 40.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 23.v),
                      Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(bottom: 8.v),
                                child: CustomIconButton(
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    padding: EdgeInsets.all(7.h),
                                    onTap: () {
                                      onTapBtnIconButton(context);
                                    },
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup24))),
                            Padding(
                                padding: EdgeInsets.only(left: 132.h, top: 2.v),
                                child: Text("lbl_biology".tr,
                                    style: CustomTextStyles
                                        .titleLargeBlack900Bold))
                          ]),
                      SizedBox(height: 30.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("lbl_question_20_20".tr,
                              style:
                                  CustomTextStyles.titleMediumBlack900Medium)),
                      SizedBox(height: 12.v),
                      Container(
                          width: 302.h,
                          margin: EdgeInsets.only(left: 1.h, right: 64.h),
                          child: Text("msg_what_is_the_part".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.bodyMedium15)),
                      SizedBox(height: 30.v),
                      _buildCellMembraneOptions(context),
                      SizedBox(height: 86.v),
                      CustomElevatedButton(
                          text: "lbl_next".tr,
                          margin: EdgeInsets.only(left: 31.h, right: 32.h),
                          onPressed: () {
                            onTapNext(context);
                          },
                          alignment: Alignment.center),
                      SizedBox(height: 27.v),
                      GestureDetector(
                          onTap: () {
                            onTapTxtSkip(context);
                          },
                          child: Padding(
                              padding: EdgeInsets.only(left: 150.h),
                              child: Text("lbl_skip".tr,
                                  style:
                                      CustomTextStyles.headlineSmallGray600)))
                    ]))));
  }

  /// Section Widget
  Widget _buildCellMembraneOptions(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: BlocBuilder<QuestionPaperBloc, QuestionPaperState>(
            builder: (context, state) {
          return state.questionPaperModelObj!.radioList.isNotEmpty
              ? Column(children: [
                  CustomRadioButton(
                      text: "msg_a_cell_membrane".tr,
                      value: state.questionPaperModelObj?.radioList[0] ?? "",
                      groupValue: state.radioGroup,
                      padding: EdgeInsets.fromLTRB(26.h, 23.v, 30.h, 23.v),
                      onChange: (value) {
                        context
                            .read<QuestionPaperBloc>()
                            .add(ChangeRadioButtonEvent(value: value));
                      }),
                  Padding(
                      padding: EdgeInsets.only(top: 35.v),
                      child: CustomRadioButton(
                          text: "lbl_b_chloroplast".tr,
                          value:
                              state.questionPaperModelObj?.radioList[1] ?? "",
                          groupValue: state.radioGroup,
                          padding: EdgeInsets.fromLTRB(26.h, 25.v, 30.h, 25.v),
                          decoration: RadioStyleHelper.outlineBlack,
                          onChange: (value) {
                            context
                                .read<QuestionPaperBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          })),
                  Padding(
                      padding: EdgeInsets.only(top: 35.v),
                      child: CustomRadioButton(
                          text: "lbl_c_nucleus".tr,
                          value:
                              state.questionPaperModelObj?.radioList[2] ?? "",
                          groupValue: state.radioGroup,
                          padding: EdgeInsets.fromLTRB(26.h, 25.v, 30.h, 25.v),
                          onChange: (value) {
                            context
                                .read<QuestionPaperBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          })),
                  Padding(
                      padding: EdgeInsets.only(top: 35.v),
                      child: CustomRadioButton(
                          text: "lbl_d_mitochondria".tr,
                          value:
                              state.questionPaperModelObj?.radioList[3] ?? "",
                          groupValue: state.radioGroup,
                          padding: EdgeInsets.fromLTRB(26.h, 25.v, 30.h, 25.v),
                          onChange: (value) {
                            context
                                .read<QuestionPaperBloc>()
                                .add(ChangeRadioButtonEvent(value: value));
                          }))
                ])
              : Container();
        }));
  }

  /// Navigates to the testDeclarationScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.testDeclarationScreen,
    );
  }

  /// Navigates to the submitFormScreen when the action is triggered.
  onTapNext(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.submitFormScreen,
    );
  }

  /// Navigates to the testPaperScreen when the action is triggered.
  onTapTxtSkip(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.testPaperScreen,
    );
  }
}
