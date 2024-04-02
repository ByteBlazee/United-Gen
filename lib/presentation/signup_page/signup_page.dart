import 'bloc/signup_bloc.dart';
import 'models/signup_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/core/utils/validation_functions.dart';
import 'package:ayush_s_application13/widgets/custom_elevated_button.dart';
import 'package:ayush_s_application13/widgets/custom_switch.dart';
import 'package:ayush_s_application13/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class SignupPage extends StatefulWidget {
  const SignupPage({Key? key}) : super(key: key);

  @override
  SignupPageState createState() => SignupPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<SignupBloc>(
        create: (context) =>
            SignupBloc(SignupState(signupModelObj: SignupModel()))
              ..add(SignupInitialEvent()),
        child: SignupPage());
  }
}

// ignore_for_file: must_be_immutable
class SignupPageState extends State<SignupPage>
    with AutomaticKeepAliveClientMixin<SignupPage> {
  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  bool get wantKeepAlive => true;

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.black900,
            resizeToAvoidBottomInset: false,
            body: Form(
                key: _formKey,
                child: SingleChildScrollView(
                    child: Column(children: [
                  SizedBox(height: 27.v),
                  Padding(
                      padding: EdgeInsets.only(left: 19.h, right: 22.h),
                      child: Column(children: [
                        _buildNameColumn(context),
                        SizedBox(height: 36.v),
                        _buildEmailColumn(context),
                        SizedBox(height: 44.v),
                        _buildPhoneColumn(context),
                        SizedBox(height: 51.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 28.h),
                                child: Text("lbl_password".tr,
                                    style: theme.textTheme.titleMedium))),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(left: 18.h, right: 16.h),
                            child: BlocBuilder<SignupBloc, SignupState>(
                                builder: (context, state) {
                              return CustomTextFormField(
                                  controller: state.passwordController,
                                  hintText: "msg_enter_your_password".tr,
                                  textInputAction: TextInputAction.done,
                                  textInputType: TextInputType.visiblePassword,
                                  suffix: InkWell(
                                      onTap: () {
                                        context.read<SignupBloc>().add(
                                            ChangePasswordVisibilityEvent(
                                                value: !state.isShowPassword));
                                      },
                                      child: Container(
                                          margin: EdgeInsets.fromLTRB(
                                              12.h, 22.v, 25.h, 18.v),
                                          child: CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgEyeoffoutline,
                                              height: 24.adaptSize,
                                              width: 24.adaptSize))),
                                  suffixConstraints:
                                      BoxConstraints(maxHeight: 64.v),
                                  validator: (value) {
                                    if (value == null ||
                                        (!isValidPassword(value,
                                            isRequired: true))) {
                                      return "err_msg_please_enter_valid_password"
                                          .tr;
                                    }
                                    return null;
                                  },
                                  obscureText: state.isShowPassword,
                                  contentPadding: EdgeInsets.only(
                                      left: 25.h, top: 18.v, bottom: 18.v));
                            })),
                        SizedBox(height: 32.v),
                        _buildIWantToReceiveRow(context),
                        SizedBox(height: 19.v),
                        CustomElevatedButton(
                            text: "lbl_create_account".tr,
                            buttonTextStyle:
                                CustomTextStyles.titleLargeOnPrimary23,
                            onPressed: () {
                              onTapCreateAccount(context);
                            }),
                        SizedBox(height: 29.v),
                        _buildLineOneRow(context),
                        SizedBox(height: 15.v),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgLogoApple,
                                  height: 27.v,
                                  width: 25.h),
                              CustomImageView(
                                  imagePath: ImageConstant.imgLogoGoogle,
                                  height: 24.adaptSize,
                                  width: 24.adaptSize,
                                  margin: EdgeInsets.only(left: 24.h, top: 3.v))
                            ]),
                        SizedBox(height: 21.v),
                        Container(
                            height: 12.v,
                            width: 179.h,
                            decoration: BoxDecoration(
                                color: appTheme.blueGray10001.withOpacity(0.5),
                                borderRadius: BorderRadius.circular(5.h)))
                      ]))
                ])))));
  }

  /// Section Widget
  Widget _buildNameColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text("lbl_name".tr, style: theme.textTheme.titleMedium)),
          SizedBox(height: 6.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  BlocSelector<SignupBloc, SignupState, TextEditingController?>(
                      selector: (state) => state.nameController,
                      builder: (context, nameController) {
                        return CustomTextFormField(
                            controller: nameController,
                            hintText: "lbl_enter_your_name".tr,
                            validator: (value) {
                              if (!isText(value)) {
                                return "err_msg_please_enter_valid_text".tr;
                              }
                              return null;
                            });
                      }))
        ]));
  }

  /// Section Widget
  Widget _buildEmailColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text("lbl_email".tr, style: theme.textTheme.titleMedium)),
          SizedBox(height: 8.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  BlocSelector<SignupBloc, SignupState, TextEditingController?>(
                      selector: (state) => state.emailController,
                      builder: (context, emailController) {
                        return CustomTextFormField(
                            controller: emailController,
                            hintText: "msg_enter_your_email".tr,
                            textInputType: TextInputType.emailAddress,
                            validator: (value) {
                              if (value == null ||
                                  (!isValidEmail(value, isRequired: true))) {
                                return "err_msg_please_enter_valid_email".tr;
                              }
                              return null;
                            });
                      }))
        ]));
  }

  /// Section Widget
  Widget _buildPhoneColumn(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 16.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Padding(
              padding: EdgeInsets.only(left: 12.h),
              child: Text("lbl_phone".tr, style: theme.textTheme.titleMedium)),
          SizedBox(height: 8.v),
          Padding(
              padding: EdgeInsets.only(left: 2.h),
              child:
                  BlocSelector<SignupBloc, SignupState, TextEditingController?>(
                      selector: (state) => state.phoneController,
                      builder: (context, phoneController) {
                        return CustomTextFormField(
                            controller: phoneController,
                            hintText: "msg_enter_your_number".tr,
                            textInputType: TextInputType.number,
                            validator: (value) {
                              if (!isNumeric(value)) {
                                return "err_msg_please_enter_valid_number".tr;
                              }
                              return null;
                            });
                      }))
        ]));
  }

  /// Section Widget
  Widget _buildIWantToReceiveRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 11.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 257.h,
              child: Text("msg_i_want_to_receive".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: CustomTextStyles.bodyLargeOnPrimary
                      .copyWith(height: 1.26))),
          BlocSelector<SignupBloc, SignupState, bool?>(
              selector: (state) => state.isSelectedSwitch,
              builder: (context, isSelectedSwitch) {
                return CustomSwitch(
                    margin: EdgeInsets.only(left: 51.h, top: 11.v, bottom: 7.v),
                    value: isSelectedSwitch,
                    onChange: (value) {
                      context
                          .read<SignupBloc>()
                          .add(ChangeSwitchEvent(value: value));
                    });
              })
        ]));
  }

  /// Section Widget
  Widget _buildLineOneRow(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 5.h, right: 11.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              Padding(
                  padding: EdgeInsets.only(top: 11.v, bottom: 9.v),
                  child: SizedBox(
                      width: 100.h,
                      child: Divider(
                          color: theme.colorScheme.onPrimary.withOpacity(1)))),
              Text("msg_or_continue_with".tr,
                  style: CustomTextStyles.bodyLargeInterOnPrimary),
              Padding(
                  padding: EdgeInsets.only(top: 11.v, bottom: 9.v),
                  child: SizedBox(
                      width: 100.h,
                      child: Divider(
                          color: theme.colorScheme.onPrimary.withOpacity(1))))
            ]));
  }

  /// Navigates to the otpScreen when the action is triggered.
  onTapCreateAccount(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.otpScreen,
    );
  }
}
