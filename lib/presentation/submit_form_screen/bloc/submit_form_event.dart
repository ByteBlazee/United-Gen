// ignore_for_file: must_be_immutable

part of 'submit_form_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///SubmitForm widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class SubmitFormEvent extends Equatable {}

/// Event that is dispatched when the SubmitForm widget is first created.
class SubmitFormInitialEvent extends SubmitFormEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends SubmitFormEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
