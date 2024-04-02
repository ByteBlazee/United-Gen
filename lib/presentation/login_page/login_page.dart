import 'bloc/login_bloc.dart';
import 'models/login_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/core/utils/validation_functions.dart';
import 'package:ayush_s_application13/widgets/custom_elevated_button.dart';
import 'package:ayush_s_application13/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  LoginPageState createState() => LoginPageState();

  static Widget builder(BuildContext context) {
    return BlocProvider<LoginBloc>(
        create: (context) => LoginBloc(LoginState(loginModelObj: LoginModel()))
          ..add(LoginInitialEvent()),
        child: LoginPage());
  }
}

// ignore_for_file: must_be_immutable
class LoginPageState extends State<LoginPage>
    with AutomaticKeepAliveClientMixin<LoginPage> {
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
                  SizedBox(height: 57.v),
                  Padding(
                      padding: EdgeInsets.only(left: 33.h, right: 38.h),
                      child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("lbl_hey_there".tr,
                                style: theme.textTheme.headlineLarge),
                            SizedBox(height: 3.v),
                            Text("msg_good_to_see_you".tr,
                                style: CustomTextStyles.bodyLargeOnPrimary_1),
                            SizedBox(height: 37.v),
                            Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text("lbl_name".tr,
                                    style: theme.textTheme.titleMedium)),
                            SizedBox(height: 6.v),
                            BlocSelector<LoginBloc, LoginState,
                                    TextEditingController?>(
                                selector: (state) => state.nameController,
                                builder: (context, nameController) {
                                  return CustomTextFormField(
                                      controller: nameController,
                                      hintText: "lbl_enter_your_name2".tr,
                                      validator: (value) {
                                        if (!isText(value)) {
                                          return "err_msg_please_enter_valid_text"
                                              .tr;
                                        }
                                        return null;
                                      });
                                }),
                            SizedBox(height: 36.v),
                            _buildUserProfile(context),
                            SizedBox(height: 30.v),
                            Padding(
                                padding: EdgeInsets.only(left: 14.h),
                                child: Text("lbl_password".tr,
                                    style: theme.textTheme.titleMedium)),
                            SizedBox(height: 8.v),
                            Padding(
                                padding: EdgeInsets.only(left: 4.h),
                                child: BlocBuilder<LoginBloc, LoginState>(
                                    builder: (context, state) {
                                  return CustomTextFormField(
                                      controller: state.passwordController,
                                      hintText: "msg_enter_your_password".tr,
                                      textInputAction: TextInputAction.done,
                                      textInputType:
                                          TextInputType.visiblePassword,
                                      suffix: InkWell(
                                          onTap: () {
                                            context.read<LoginBloc>().add(
                                                ChangePasswordVisibilityEvent(
                                                    value:
                                                        !state.isShowPassword));
                                          },
                                          child: Container(
                                              margin: EdgeInsets.fromLTRB(
                                                  12.h, 21.v, 28.h, 19.v),
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
                                          left: 20.h, top: 18.v, bottom: 18.v));
                                })),
                            SizedBox(height: 11.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Padding(
                                    padding: EdgeInsets.only(right: 11.h),
                                    child: Text("msg_forgot_password".tr,
                                        style: CustomTextStyles
                                            .bodyLargeOnPrimary_1
                                            .copyWith(
                                                decoration: TextDecoration
                                                    .underline)))),
                            SizedBox(height: 47.v),
                            CustomElevatedButton(
                                text: "lbl_log_in".tr,
                                margin: EdgeInsets.only(left: 6.h),
                                buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                                onPressed: () {
                                  onTapLogIn(context);
                                }),
                            SizedBox(height: 156.v),
                            Align(
                                alignment: Alignment.centerRight,
                                child: Container(
                                    height: 12.v,
                                    width: 179.h,
                                    margin: EdgeInsets.only(right: 74.h),
                                    decoration: BoxDecoration(
                                        color: appTheme.blueGray10001
                                            .withOpacity(0.5),
                                        borderRadius:
                                            BorderRadius.circular(5.h))))
                          ]))
                ])))));
  }

  /// Section Widget
  Widget _buildUserProfile(BuildContext context) {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      Padding(
          padding: EdgeInsets.only(left: 10.h),
          child: Text("lbl_email".tr, style: theme.textTheme.titleMedium)),
      SizedBox(height: 8.v),
      BlocSelector<LoginBloc, LoginState, TextEditingController?>(
          selector: (state) => state.emailController,
          builder: (context, emailController) {
            return CustomTextFormField(
                controller: emailController,
                hintText: "lbl_enter_your_mail".tr);
          })
    ]);
  }

  /// Navigates to the welcomePageAfterLoginScreen when the action is triggered.
  onTapLogIn(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomePageAfterLoginScreen,
    );
  }
}
