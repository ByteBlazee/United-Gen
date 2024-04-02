// ignore_for_file: must_be_immutable

part of 'my_courses_bloc.dart';

/// Represents the state of MyCourses in the application.
class MyCoursesState extends Equatable {
  MyCoursesState({this.myCoursesModelObj});

  MyCoursesModel? myCoursesModelObj;

  @override
  List<Object?> get props => [
        myCoursesModelObj,
      ];
  MyCoursesState copyWith({MyCoursesModel? myCoursesModelObj}) {
    return MyCoursesState(
      myCoursesModelObj: myCoursesModelObj ?? this.myCoursesModelObj,
    );
  }
}
