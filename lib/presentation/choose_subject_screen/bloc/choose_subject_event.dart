// ignore_for_file: must_be_immutable

part of 'choose_subject_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChooseSubject widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChooseSubjectEvent extends Equatable {}

/// Event that is dispatched when the ChooseSubject widget is first created.
class ChooseSubjectInitialEvent extends ChooseSubjectEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends ChooseSubjectEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton1Event extends ChooseSubjectEvent {
  ChangeRadioButton1Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton2Event extends ChooseSubjectEvent {
  ChangeRadioButton2Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}

///Event for changing radio button
class ChangeRadioButton3Event extends ChooseSubjectEvent {
  ChangeRadioButton3Event({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
