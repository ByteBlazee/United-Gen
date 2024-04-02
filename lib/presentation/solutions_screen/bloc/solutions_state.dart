// ignore_for_file: must_be_immutable

part of 'solutions_bloc.dart';

/// Represents the state of Solutions in the application.
class SolutionsState extends Equatable {
  SolutionsState({
    this.englishKeyTwoCheckBox = false,
    this.englishKeyTwoCheckBox1 = false,
    this.englishKeyTwoCheckBox2 = false,
    this.englishKeyTwoCheckBox3 = false,
    this.solutionsModelObj,
  });

  SolutionsModel? solutionsModelObj;

  bool englishKeyTwoCheckBox;

  bool englishKeyTwoCheckBox1;

  bool englishKeyTwoCheckBox2;

  bool englishKeyTwoCheckBox3;

  @override
  List<Object?> get props => [
        englishKeyTwoCheckBox,
        englishKeyTwoCheckBox1,
        englishKeyTwoCheckBox2,
        englishKeyTwoCheckBox3,
        solutionsModelObj,
      ];
  SolutionsState copyWith({
    bool? englishKeyTwoCheckBox,
    bool? englishKeyTwoCheckBox1,
    bool? englishKeyTwoCheckBox2,
    bool? englishKeyTwoCheckBox3,
    SolutionsModel? solutionsModelObj,
  }) {
    return SolutionsState(
      englishKeyTwoCheckBox:
          englishKeyTwoCheckBox ?? this.englishKeyTwoCheckBox,
      englishKeyTwoCheckBox1:
          englishKeyTwoCheckBox1 ?? this.englishKeyTwoCheckBox1,
      englishKeyTwoCheckBox2:
          englishKeyTwoCheckBox2 ?? this.englishKeyTwoCheckBox2,
      englishKeyTwoCheckBox3:
          englishKeyTwoCheckBox3 ?? this.englishKeyTwoCheckBox3,
      solutionsModelObj: solutionsModelObj ?? this.solutionsModelObj,
    );
  }
}
