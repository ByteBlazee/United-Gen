// ignore_for_file: must_be_immutable

part of 'question_paper_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///QuestionPaper widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class QuestionPaperEvent extends Equatable {}

/// Event that is dispatched when the QuestionPaper widget is first created.
class QuestionPaperInitialEvent extends QuestionPaperEvent {
  @override
  List<Object?> get props => [];
}

///Event for changing radio button
class ChangeRadioButtonEvent extends QuestionPaperEvent {
  ChangeRadioButtonEvent({required this.value});

  String value;

  @override
  List<Object?> get props => [
        value,
      ];
}
