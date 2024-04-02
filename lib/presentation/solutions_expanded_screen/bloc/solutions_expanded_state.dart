// ignore_for_file: must_be_immutable

part of 'solutions_expanded_bloc.dart';

/// Represents the state of SolutionsExpanded in the application.
class SolutionsExpandedState extends Equatable {
  SolutionsExpandedState({
    this.question1CheckBox = false,
    this.question2CheckBox = false,
    this.solutionsExpandedModelObj,
  });

  SolutionsExpandedModel? solutionsExpandedModelObj;

  bool question1CheckBox;

  bool question2CheckBox;

  @override
  List<Object?> get props => [
        question1CheckBox,
        question2CheckBox,
        solutionsExpandedModelObj,
      ];
  SolutionsExpandedState copyWith({
    bool? question1CheckBox,
    bool? question2CheckBox,
    SolutionsExpandedModel? solutionsExpandedModelObj,
  }) {
    return SolutionsExpandedState(
      question1CheckBox: question1CheckBox ?? this.question1CheckBox,
      question2CheckBox: question2CheckBox ?? this.question2CheckBox,
      solutionsExpandedModelObj:
          solutionsExpandedModelObj ?? this.solutionsExpandedModelObj,
    );
  }
}
