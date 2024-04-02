// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';

/// This class defines the variables used in the [course_deets_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class CourseDeetsModel extends Equatable {
  CourseDeetsModel() {}

  CourseDeetsModel copyWith() {
    return CourseDeetsModel();
  }

  @override
  List<Object?> get props => [];
}
