// ignore_for_file: must_be_immutable

part of 'test_paper_bloc.dart';

/// Represents the state of TestPaper in the application.
class TestPaperState extends Equatable {
  TestPaperState({this.testPaperModelObj});

  TestPaperModel? testPaperModelObj;

  @override
  List<Object?> get props => [
        testPaperModelObj,
      ];
  TestPaperState copyWith({TestPaperModel? testPaperModelObj}) {
    return TestPaperState(
      testPaperModelObj: testPaperModelObj ?? this.testPaperModelObj,
    );
  }
}
