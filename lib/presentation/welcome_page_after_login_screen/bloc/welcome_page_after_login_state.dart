// ignore_for_file: must_be_immutable

part of 'welcome_page_after_login_bloc.dart';

/// Represents the state of WelcomePageAfterLogin in the application.
class WelcomePageAfterLoginState extends Equatable {
  WelcomePageAfterLoginState({this.welcomePageAfterLoginModelObj});

  WelcomePageAfterLoginModel? welcomePageAfterLoginModelObj;

  @override
  List<Object?> get props => [
        welcomePageAfterLoginModelObj,
      ];
  WelcomePageAfterLoginState copyWith(
      {WelcomePageAfterLoginModel? welcomePageAfterLoginModelObj}) {
    return WelcomePageAfterLoginState(
      welcomePageAfterLoginModelObj:
          welcomePageAfterLoginModelObj ?? this.welcomePageAfterLoginModelObj,
    );
  }
}
