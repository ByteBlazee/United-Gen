import 'bloc/otp_bloc.dart';
import 'models/otp_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_elevated_button.dart';
import 'package:ayush_s_application13/widgets/custom_pin_code_text_field.dart';
import 'package:flutter/material.dart';

class OtpScreen extends StatelessWidget {
  const OtpScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<OtpBloc>(
        create: (context) =>
            OtpBloc(OtpState(otpModelObj: OtpModel()))..add(OtpInitialEvent()),
        child: OtpScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black900,
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(children: [
                  SizedBox(height: 28.v),
                  Expanded(
                      child: SingleChildScrollView(
                          child: Padding(
                              padding: EdgeInsets.only(left: 19.h, right: 36.h),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Text("msg_check_your_inbox".tr,
                                            style: CustomTextStyles
                                                .titleLargeOnPrimaryBold)),
                                    SizedBox(height: 1.v),
                                    Align(
                                        alignment: Alignment.centerLeft,
                                        child: Padding(
                                            padding: EdgeInsets.only(left: 5.h),
                                            child: Text(
                                                "msg_we_have_sent_you".tr,
                                                style: CustomTextStyles
                                                    .bodyMediumOnPrimary))),
                                    SizedBox(height: 39.v),
                                    Padding(
                                        padding: EdgeInsets.only(right: 44.h),
                                        child: Row(
                                            mainAxisAlignment:
                                                MainAxisAlignment.end,
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              SizedBox(
                                                  width: 200.h,
                                                  child: Text(
                                                      "msg_manuela_brown_gmail_com"
                                                          .tr,
                                                      maxLines: 1,
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      style: CustomTextStyles
                                                          .bodyLargeJaldiOnPrimary)),
                                              CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgMailOpenOutline,
                                                  height: 24.adaptSize,
                                                  width: 24.adaptSize,
                                                  margin: EdgeInsets.only(
                                                      left: 12.h, bottom: 7.v))
                                            ])),
                                    SizedBox(height: 33.v),
                                    Padding(
                                        padding: EdgeInsets.only(left: 16.h),
                                        child: BlocSelector<OtpBloc, OtpState,
                                                TextEditingController?>(
                                            selector: (state) =>
                                                state.otpController,
                                            builder: (context, otpController) {
                                              return CustomPinCodeTextField(
                                                  context: context,
                                                  controller: otpController,
                                                  onChanged: (value) {
                                                    otpController?.text = value;
                                                  });
                                            })),
                                    SizedBox(height: 43.v),
                                    Align(
                                        alignment: Alignment.center,
                                        child: Text("lbl_send_again".tr,
                                            style: CustomTextStyles
                                                .titleLargeJaldiYellow900)),
                                    SizedBox(height: 472.v),
                                    CustomElevatedButton(
                                        height: 40.v,
                                        width: 202.h,
                                        text: "lbl_submit_otp".tr,
                                        margin: EdgeInsets.only(right: 62.h),
                                        buttonTextStyle: CustomTextStyles
                                            .titleLargeOnPrimary23,
                                        onPressed: () {
                                          onTapSubmitOTP(context);
                                        }),
                                    SizedBox(height: 52.v),
                                    Container(
                                        height: 12.v,
                                        width: 179.h,
                                        margin: EdgeInsets.only(right: 76.h),
                                        decoration: BoxDecoration(
                                            color: appTheme.blueGray10001
                                                .withOpacity(0.5),
                                            borderRadius:
                                                BorderRadius.circular(5.h)))
                                  ]))))
                ]))));
  }

  /// Navigates to the homeScreen when the action is triggered.
  onTapSubmitOTP(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.homeScreen,
    );
  }
}
