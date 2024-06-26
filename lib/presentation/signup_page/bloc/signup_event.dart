// ignore_for_file: must_be_immutable

part of 'signup_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Signup widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SignupEvent extends Equatable {}

/// Event that is dispatched when the Signup widget is first created.
class SignupInitialEvent extends SignupEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing password visibility
class ChangePasswordVisibilityEvent extends SignupEvent {
  ChangePasswordVisibilityEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing switch
class ChangeSwitchEvent extends SignupEvent {
  ChangeSwitchEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
