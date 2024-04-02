// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

/// Represents the state of Signup in the application.
class SignupState extends Equatable {
  SignupState({
    this.nameController,
    this.emailController,
    this.phoneController,
    this.passwordController,
    this.isShowPassword = true,
    this.isSelectedSwitch = false,
    this.signupModelObj,
  });

  TextEditingController? nameController;

  TextEditingController? emailController;

  TextEditingController? phoneController;

  TextEditingController? passwordController;

  SignupModel? signupModelObj;

  bool isShowPassword;

  bool isSelectedSwitch;

  @override
  List<Object?> get props => [
        nameController,
        emailController,
        phoneController,
        passwordController,
        isShowPassword,
        isSelectedSwitch,
        signupModelObj,
      ];
  SignupState copyWith({
    TextEditingController? nameController,
    TextEditingController? emailController,
    TextEditingController? phoneController,
    TextEditingController? passwordController,
    bool? isShowPassword,
    bool? isSelectedSwitch,
    SignupModel? signupModelObj,
  }) {
    return SignupState(
      nameController: nameController ?? this.nameController,
      emailController: emailController ?? this.emailController,
      phoneController: phoneController ?? this.phoneController,
      passwordController: passwordController ?? this.passwordController,
      isShowPassword: isShowPassword ?? this.isShowPassword,
      isSelectedSwitch: isSelectedSwitch ?? this.isSelectedSwitch,
      signupModelObj: signupModelObj ?? this.signupModelObj,
    );
  }
}
