// ignore_for_file: must_be_immutable

part of 'choose_subject_bloc.dart';

/// Represents the state of ChooseSubject in the application.
class ChooseSubjectState extends Equatable {
  ChooseSubjectState({
    this.radioGroup = "",
    this.radioGroup1 = "",
    this.radioGroup2 = "",
    this.radioGroup3 = "",
    this.chooseSubjectModelObj,
  });

  ChooseSubjectModel? chooseSubjectModelObj;

  String radioGroup;

  String radioGroup1;

  String radioGroup2;

  String radioGroup3;

  @override
  List<Object?> get props => [
        radioGroup,
        radioGroup1,
        radioGroup2,
        radioGroup3,
        chooseSubjectModelObj,
      ];
  ChooseSubjectState copyWith({
    String? radioGroup,
    String? radioGroup1,
    String? radioGroup2,
    String? radioGroup3,
    ChooseSubjectModel? chooseSubjectModelObj,
  }) {
    return ChooseSubjectState(
      radioGroup: radioGroup ?? this.radioGroup,
      radioGroup1: radioGroup1 ?? this.radioGroup1,
      radioGroup2: radioGroup2 ?? this.radioGroup2,
      radioGroup3: radioGroup3 ?? this.radioGroup3,
      chooseSubjectModelObj:
          chooseSubjectModelObj ?? this.chooseSubjectModelObj,
    );
  }
}
