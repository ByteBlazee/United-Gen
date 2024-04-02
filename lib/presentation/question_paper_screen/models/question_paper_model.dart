// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [question_paper_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class QuestionPaperModel extends Equatable {
  QuestionPaperModel({this.radioList = const []}) {}

  List<String> radioList;

  QuestionPaperModel copyWith({List<String>? radioList}) {
    return QuestionPaperModel(
      radioList: radioList ?? this.radioList,
    );
  }

  @override
  List<Object?> get props => [radioList];
}
