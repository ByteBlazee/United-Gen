// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [test_report_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TestReportModel extends Equatable {
  TestReportModel() {}

  TestReportModel copyWith() {
    return TestReportModel();
  }

  @override
  List<Object?> get props => [];
}
