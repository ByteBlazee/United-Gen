// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [test_paper_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class TestPaperModel extends Equatable {
  TestPaperModel() {}

  TestPaperModel copyWith() {
    return TestPaperModel();
  }

  @override
  List<Object?> get props => [];
}
