// ignore_for_file: must_be_immutable

part of 'test_report_bloc.dart';

/// Represents the state of TestReport in the application.
class TestReportState extends Equatable {
  TestReportState({this.testReportModelObj});

  TestReportModel? testReportModelObj;

  @override
  List<Object?> get props => [
        testReportModelObj,
      ];
  TestReportState copyWith({TestReportModel? testReportModelObj}) {
    return TestReportState(
      testReportModelObj: testReportModelObj ?? this.testReportModelObj,
    );
  }
}
