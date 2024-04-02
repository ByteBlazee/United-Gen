// ignore_for_file: must_be_immutable

part of 'question_paper_bloc.dart';

/// Represents the state of QuestionPaper in the application.
class QuestionPaperState extends Equatable {
  QuestionPaperState({
    this.radioGroup = "",
    this.questionPaperModelObj,
  });

  QuestionPaperModel? questionPaperModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        questionPaperModelObj,
      ];
  QuestionPaperState copyWith({
    String? radioGroup,
    QuestionPaperModel? questionPaperModelObj,
  }) {
    return QuestionPaperState(
      radioGroup: radioGroup ?? this.radioGroup,
      questionPaperModelObj:
          questionPaperModelObj ?? this.questionPaperModelObj,
    );
  }
}
