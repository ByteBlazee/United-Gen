// ignore_for_file: must_be_immutable

part of 'login_tab_container_bloc.dart';

/// Represents the state of LoginTabContainer in the application.
class LoginTabContainerState extends Equatable {
  LoginTabContainerState({this.loginTabContainerModelObj});

  LoginTabContainerModel? loginTabContainerModelObj;

  @override
  List<Object?> get props => [
        loginTabContainerModelObj,
      ];
  LoginTabContainerState copyWith(
      {LoginTabContainerModel? loginTabContainerModelObj}) {
    return LoginTabContainerState(
      loginTabContainerModelObj:
          loginTabContainerModelObj ?? this.loginTabContainerModelObj,
    );
  }
}
