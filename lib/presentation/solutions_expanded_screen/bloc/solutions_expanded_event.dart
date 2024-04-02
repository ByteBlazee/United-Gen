// ignore_for_file: must_be_immutable

part of 'solutions_expanded_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SolutionsExpanded widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SolutionsExpandedEvent extends Equatable {}

/// Event that is dispatched when the SolutionsExpanded widget is first created.
class SolutionsExpandedInitialEvent extends SolutionsExpandedEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SolutionsExpandedEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends SolutionsExpandedEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
