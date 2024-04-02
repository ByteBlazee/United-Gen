// ignore_for_file: must_be_immutable

part of 'course_deets_bloc.dart';

/// Represents the state of CourseDeets in the application.
class CourseDeetsState extends Equatable {
  CourseDeetsState({this.courseDeetsModelObj});

  CourseDeetsModel? courseDeetsModelObj;

  @override
  List<Object?> get props => [
        courseDeetsModelObj,
      ];
  CourseDeetsState copyWith({CourseDeetsModel? courseDeetsModelObj}) {
    return CourseDeetsState(
      courseDeetsModelObj: courseDeetsModelObj ?? this.courseDeetsModelObj,
    );
  }
}
