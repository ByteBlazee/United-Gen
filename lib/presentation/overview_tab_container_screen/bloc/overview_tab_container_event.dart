// ignore_for_file: must_be_immutable

part of 'overview_tab_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///OverviewTabContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OverviewTabContainerEvent extends Equatable {}

/// Event that is dispatched when the OverviewTabContainer widget is first created.
class OverviewTabContainerInitialEvent extends OverviewTabContainerEvent {
  @override
  List<Object?> get props => [];
}
