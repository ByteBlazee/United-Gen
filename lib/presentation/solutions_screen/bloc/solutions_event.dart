// ignore_for_file: must_be_immutable

part of 'solutions_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///Solutions widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SolutionsEvent extends Equatable {}

/// Event that is dispatched when the Solutions widget is first created.
class SolutionsInitialEvent extends SolutionsEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing checkbox
class ChangeCheckBoxEvent extends SolutionsEvent {
  ChangeCheckBoxEvent({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox1Event extends SolutionsEvent {
  ChangeCheckBox1Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox2Event extends SolutionsEvent {
  ChangeCheckBox2Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing checkbox
class ChangeCheckBox3Event extends SolutionsEvent {
  ChangeCheckBox3Event({required this.value});

  bool value;

  @override
  List<Object?> get props => [
        value,
      ];
}
