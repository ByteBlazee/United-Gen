// ignore_for_file: must_be_immutable

part of 'overview_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Overview widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class OverviewEvent extends Equatable {}

/// Event that is dispatched when the Overview widget is first created.
class OverviewInitialEvent extends OverviewEvent {
  @override
  List<Object?> get props => [];
}
