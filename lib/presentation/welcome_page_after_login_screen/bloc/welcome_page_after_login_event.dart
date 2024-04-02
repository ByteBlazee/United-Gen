// ignore_for_file: must_be_immutable

part of 'welcome_page_after_login_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///WelcomePageAfterLogin widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class WelcomePageAfterLoginEvent extends Equatable {}

/// Event that is dispatched when the WelcomePageAfterLogin widget is first created.
class WelcomePageAfterLoginInitialEvent extends WelcomePageAfterLoginEvent {
  @override
  List<Object?> get props => [];
}
