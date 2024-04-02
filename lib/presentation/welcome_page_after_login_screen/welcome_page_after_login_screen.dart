import '../welcome_page_after_login_screen/widgets/userprofilesection_item_widget.dart';
import '../welcome_page_after_login_screen/widgets/viewhierarchysection_item_widget.dart';
import 'bloc/welcome_page_after_login_bloc.dart';
import 'models/userprofilesection_item_model.dart';
import 'models/viewhierarchysection_item_model.dart';
import 'models/welcome_page_after_login_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class WelcomePageAfterLoginScreen extends StatelessWidget {
  const WelcomePageAfterLoginScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<WelcomePageAfterLoginBloc>(
        create: (context) => WelcomePageAfterLoginBloc(
            WelcomePageAfterLoginState(
                welcomePageAfterLoginModelObj: WelcomePageAfterLoginModel()))
          ..add(WelcomePageAfterLoginInitialEvent()),
        child: WelcomePageAfterLoginScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray100,
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 13.v),
                child: Column(children: [
                  SizedBox(height: 26.v),
                  _buildWelcomeSection(context),
                  SizedBox(height: 30.v),
                  _buildArrowLeftSection(context),
                  SizedBox(height: 24.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text("lbl_your_classes".tr,
                              style: CustomTextStyles.titleSmallInter))),
                  SizedBox(height: 10.v),
                  _buildViewHierarchySection(context),
                  SizedBox(height: 35.v),
                  _buildUserProfileSection(context)
                ]))));
  }

  /// Section Widget
  Widget _buildWelcomeSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 33.h, right: 21.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                  height: 63.v,
                  width: 104.h,
                  child: Stack(alignment: Alignment.bottomLeft, children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: Text("lbl_welcome".tr,
                            style: CustomTextStyles.titleLargeBlack900Regular)),
                    Align(
                        alignment: Alignment.bottomLeft,
                        child: Padding(
                            padding: EdgeInsets.only(left: 6.h),
                            child: Text("lbl_harry".tr,
                                style:
                                    CustomTextStyles.titleLargeBlack900Bold))),
                    CustomImageView(
                        imagePath: ImageConstant.imgHandLeftSharp,
                        height: 32.adaptSize,
                        width: 32.adaptSize,
                        alignment: Alignment.bottomRight,
                        margin: EdgeInsets.only(bottom: 5.v))
                  ])),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgRewind,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                  margin: EdgeInsets.only(top: 22.v, bottom: 17.v)),
              CustomImageView(
                  imagePath: ImageConstant.imgPersonCircleOutline,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(left: 7.h, top: 19.v, bottom: 14.v))
            ]));
  }

  /// Section Widget
  Widget _buildArrowLeftSection(BuildContext context) {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 25.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 18.v),
        decoration: AppDecoration.gradientDeepPurpleToBlue
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Padding(
                  padding: EdgeInsets.only(left: 5.h, right: 2.h),
                  child: Row(children: [
                    Expanded(
                        child: Row(children: [
                      SizedBox(
                          height: 30.adaptSize,
                          width: 30.adaptSize,
                          child:
                              Stack(alignment: Alignment.topCenter, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgArrowLeft,
                                height: 30.adaptSize,
                                width: 30.adaptSize,
                                alignment: Alignment.center),
                            CustomImageView(
                                imagePath: ImageConstant.imgLightBulb,
                                height: 19.v,
                                width: 30.h,
                                alignment: Alignment.topCenter,
                                margin: EdgeInsets.only(top: 1.v))
                          ])),
                      Spacer(),
                      Container(
                          width: 24.h,
                          padding: EdgeInsets.symmetric(
                              horizontal: 2.h, vertical: 3.v),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder2),
                          child: Text("lbl_00".tr,
                              style: CustomTextStyles.titleSmall14)),
                      Container(
                          width: 24.h,
                          margin: EdgeInsets.only(left: 2.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 4.h, vertical: 3.v),
                          decoration: AppDecoration.fillOnPrimary.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder2),
                          child: Text("lbl_10".tr,
                              style: CustomTextStyles.titleSmall14))
                    ])),
                    Container(
                        width: 24.h,
                        margin: EdgeInsets.only(left: 2.h),
                        padding: EdgeInsets.all(3.h),
                        decoration: AppDecoration.fillOnPrimary.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder2),
                        child: Text("lbl_30".tr,
                            style: CustomTextStyles.titleSmall14))
                  ])),
              SizedBox(height: 5.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("lbl_math_class".tr,
                      style: CustomTextStyles.bodyLargeBlack900)),
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Text("lbl_starting_soon".tr,
                      style: CustomTextStyles.titleMediumBlack900SemiBold)),
              SizedBox(height: 27.v),
              Padding(
                  padding: EdgeInsets.only(left: 5.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                            width: 112.h,
                            margin: EdgeInsets.only(bottom: 5.v),
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                      height: 30.v,
                                      width: 60.h,
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgPlay,
                                                height: 30.adaptSize,
                                                width: 30.adaptSize,
                                                alignment:
                                                    Alignment.centerRight),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgPlay,
                                                height: 30.adaptSize,
                                                width: 30.adaptSize,
                                                alignment: Alignment.center),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgPlay,
                                                height: 30.adaptSize,
                                                width: 30.adaptSize,
                                                alignment: Alignment.centerLeft)
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 8.v, bottom: 6.v),
                                      child: Text("lbl_50_more".tr,
                                          style: CustomTextStyles.bodySmall10))
                                ])),
                        CustomElevatedButton(
                            height: 35.v,
                            width: 92.h,
                            text: "lbl_join_class".tr,
                            buttonStyle: CustomButtonStyles.fillYellow,
                            buttonTextStyle:
                                CustomTextStyles.titleSmallOnPrimary)
                      ]))
            ]));
  }

  /// Section Widget
  Widget _buildViewHierarchySection(BuildContext context) {
    return SizedBox(
        height: 166.v,
        child: BlocSelector<WelcomePageAfterLoginBloc,
                WelcomePageAfterLoginState, WelcomePageAfterLoginModel?>(
            selector: (state) => state.welcomePageAfterLoginModelObj,
            builder: (context, welcomePageAfterLoginModelObj) {
              return ListView.separated(
                  padding: EdgeInsets.only(left: 17.h),
                  scrollDirection: Axis.horizontal,
                  separatorBuilder: (context, index) {
                    return SizedBox(width: 14.h);
                  },
                  itemCount: welcomePageAfterLoginModelObj
                          ?.viewhierarchysectionItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    ViewhierarchysectionItemModel model =
                        welcomePageAfterLoginModelObj
                                ?.viewhierarchysectionItemList[index] ??
                            ViewhierarchysectionItemModel();
                    return ViewhierarchysectionItemWidget(model);
                  });
            }));
  }

  /// Section Widget
  Widget _buildUserProfileSection(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 19.h),
        child: BlocSelector<WelcomePageAfterLoginBloc,
                WelcomePageAfterLoginState, WelcomePageAfterLoginModel?>(
            selector: (state) => state.welcomePageAfterLoginModelObj,
            builder: (context, welcomePageAfterLoginModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 27.v);
                  },
                  itemCount: welcomePageAfterLoginModelObj
                          ?.userprofilesectionItemList.length ??
                      0,
                  itemBuilder: (context, index) {
                    UserprofilesectionItemModel model =
                        welcomePageAfterLoginModelObj
                                ?.userprofilesectionItemList[index] ??
                            UserprofilesectionItemModel();
                    return UserprofilesectionItemWidget(model,
                        onTapUserProfile: () {
                      onTapUserProfile(context);
                    });
                  });
            }));
  }

  /// Navigates to the testPaperScreen when the action is triggered.
  onTapUserProfile(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.testPaperScreen,
    );
  }
}
