// ignore_for_file: must_be_immutable

part of 'login_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///LoginTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class LoginTabContainerEvent extends Equatable {}

/// Event that is dispatched when the LoginTabContainer widget is first created.
class LoginTabContainerInitialEvent extends LoginTabContainerEvent {
  @override
  List<Object?> get props => [];
}
