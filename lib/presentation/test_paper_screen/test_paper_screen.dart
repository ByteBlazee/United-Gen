import 'bloc/test_paper_bloc.dart';
import 'models/test_paper_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class TestPaperScreen extends StatelessWidget {
  const TestPaperScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<TestPaperBloc>(
        create: (context) =>
            TestPaperBloc(TestPaperState(testPaperModelObj: TestPaperModel()))
              ..add(TestPaperInitialEvent()),
        child: TestPaperScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<TestPaperBloc, TestPaperState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primaryContainer,
              body: Container(
                  width: double.maxFinite,
                  padding:
                      EdgeInsets.symmetric(horizontal: 26.h, vertical: 51.v),
                  child: Column(children: [
                    _buildTestPaperRow(context),
                    Spacer(flex: 35),
                    CustomImageView(
                        imagePath: ImageConstant.imgUnsplashApcuiqopeio,
                        height: 192.v,
                        width: 128.h),
                    SizedBox(height: 42.v),
                    _buildViewStack(context),
                    SizedBox(height: 42.v),
                    Padding(
                        padding: EdgeInsets.only(left: 47.h, right: 38.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              SizedBox(
                                  height: 30.v,
                                  child: VerticalDivider(
                                      width: 1.h, thickness: 1.v)),
                              Spacer(flex: 34),
                              SizedBox(
                                  height: 30.v,
                                  child: VerticalDivider(
                                      width: 1.h, thickness: 1.v)),
                              Spacer(flex: 32),
                              SizedBox(
                                  height: 30.v,
                                  child: VerticalDivider(
                                      width: 1.h, thickness: 1.v)),
                              Spacer(flex: 32),
                              SizedBox(
                                  height: 30.v,
                                  child: VerticalDivider(
                                      width: 1.h, thickness: 1.v))
                            ])),
                    SizedBox(height: 22.v),
                    Padding(
                        padding: EdgeInsets.only(left: 34.h, right: 24.h),
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Padding(
                                  padding: EdgeInsets.only(top: 2.v),
                                  child: Text("lbl_easy".tr,
                                      style:
                                          CustomTextStyles.titleSmallGray600)),
                              Spacer(flex: 30),
                              GestureDetector(
                                  onTap: () {
                                    onTapTxtMedium(context);
                                  },
                                  child: Padding(
                                      padding: EdgeInsets.only(bottom: 2.v),
                                      child: Text("lbl_medium".tr,
                                          style: CustomTextStyles
                                              .titleSmallGray600))),
                              Spacer(flex: 29),
                              Padding(
                                  padding: EdgeInsets.only(bottom: 2.v),
                                  child: Text("lbl_hard".tr,
                                      style:
                                          CustomTextStyles.titleSmallGray600)),
                              Spacer(flex: 39),
                              Text("lbl_pro".tr,
                                  style: CustomTextStyles.titleSmallGray600)
                            ])),
                    Spacer(flex: 64)
                  ]))));
    });
  }

  /// Section Widget
  Widget _buildTestPaperRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 5.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Padding(
                padding: EdgeInsets.only(top: 2.v, bottom: 8.v),
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
                padding: EdgeInsets.only(left: 99.h),
                child: Text("lbl_test_paper".tr,
                    style: CustomTextStyles.titleLargeBlack900Bold23))
          ]),
          SizedBox(height: 1.v),
          Align(
              alignment: Alignment.center,
              child: Text("msg_choose_your_level".tr,
                  style: CustomTextStyles.titleMediumGray600))
        ]));
  }

  /// Section Widget
  Widget _buildViewStack(BuildContext context) {
    return Align(
        alignment: Alignment.centerRight,
        child: Container(
            height: 30.v,
            width: 349.h,
            margin: EdgeInsets.only(right: 5.h),
            child: Stack(alignment: Alignment.centerLeft, children: [
              Align(
                  alignment: Alignment.center,
                  child: Container(
                      decoration: AppDecoration.fillBluegray10001.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder10),
                      child: Container(
                          height: 20.v,
                          width: 145.h,
                          decoration: BoxDecoration(
                              color: appTheme.lightBlue300,
                              borderRadius: BorderRadius.circular(10.h))))),
              Align(
                  alignment: Alignment.centerLeft,
                  child: GestureDetector(
                      onTap: () {
                        onTapView(context);
                      },
                      child: Container(
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          margin: EdgeInsets.only(left: 125.h),
                          decoration: BoxDecoration(
                              color: appTheme.lightBlue300,
                              borderRadius: BorderRadius.circular(15.h),
                              border: Border.all(
                                  color: theme.colorScheme.onPrimary,
                                  width: 5.h)))))
            ])));
  }

  /// Navigates to the welcomePageAfterLoginScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomePageAfterLoginScreen,
    );
  }

  /// Navigates to the testDeclarationScreen when the action is triggered.
  onTapView(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.testDeclarationScreen,
    );
  }

  /// Navigates to the testDeclarationScreen when the action is triggered.
  onTapTxtMedium(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.testDeclarationScreen,
    );
  }
}
