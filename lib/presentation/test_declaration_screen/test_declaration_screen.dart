import 'bloc/test_declaration_bloc.dart';
import 'models/test_declaration_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_elevated_button.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class TestDeclarationScreen extends StatelessWidget {
  const TestDeclarationScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TestDeclarationBloc>(
        create: (context) => TestDeclarationBloc(TestDeclarationState(
            testDeclarationModelObj: TestDeclarationModel()))
          ..add(TestDeclarationInitialEvent()),
        child: TestDeclarationScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<TestDeclarationBloc, TestDeclarationState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Container(
                  width: double.maxFinite,
                  padding: EdgeInsets.only(left: 32.h, top: 71.v, right: 32.h),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Row(children: [
                              Padding(
                                  padding:
                                      EdgeInsets.only(top: 4.v, bottom: 1.v),
                                  child: CustomIconButton(
                                      height: 24.adaptSize,
                                      width: 24.adaptSize,
                                      padding: EdgeInsets.all(7.h),
                                      onTap: () {
                                        onTapBtnIconButton(context);
                                      },
                                      child: CustomImageView(
                                          imagePath:
                                              ImageConstant.imgGroup24))),
                              Padding(
                                  padding: EdgeInsets.only(left: 89.h),
                                  child: Text("lbl_declaration".tr,
                                      style: CustomTextStyles
                                          .titleLargeBlack900Bold))
                            ])),
                        SizedBox(height: 26.v),
                        Text("msg_instructions_to".tr,
                            style: CustomTextStyles.titleMediumBlack900Medium),
                        SizedBox(height: 11.v),
                        Container(
                            width: 316.h,
                            margin: EdgeInsets.only(left: 7.h, right: 41.h),
                            child: Text("msg_keep_an_eye_on_the".tr,
                                maxLines: 5,
                                overflow: TextOverflow.ellipsis,
                                style: theme.textTheme.bodyMedium)),
                        SizedBox(height: 42.v),
                        Text("lbl_overview".tr,
                            style: CustomTextStyles.titleMediumBlack900Medium),
                        SizedBox(height: 10.v),
                        Container(
                            width: 229.h,
                            margin: EdgeInsets.only(left: 7.h),
                            child: RichText(
                                text: TextSpan(children: [
                                  TextSpan(
                                      text: "msg_exam_01_physics_subject2".tr,
                                      style: CustomTextStyles
                                          .labelLargeGray600Medium),
                                  TextSpan(
                                      text: "msg_physics_20_questions".tr,
                                      style: CustomTextStyles
                                          .labelLargeBlack900Medium)
                                ]),
                                textAlign: TextAlign.left)),
                        SizedBox(height: 5.v)
                      ])),
              bottomNavigationBar: _buildIUnderstoodButton(context)));
    });
  }

  /// Section Widget
  Widget _buildIUnderstoodButton(BuildContext context) {
    return CustomElevatedButton(
        text: "lbl_i_understood".tr,
        margin: EdgeInsets.only(left: 62.h, right: 63.h, bottom: 36.v),
        onPressed: () {
          onTapIUnderstoodButton(context);
        });
  }

  /// Navigates to the testPaperScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.testPaperScreen,
    );
  }

  /// Navigates to the questionPaperScreen when the action is triggered.
  onTapIUnderstoodButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.questionPaperScreen,
    );
  }
}
