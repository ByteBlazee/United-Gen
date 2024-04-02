// ignore_for_file: must_be_immutable

part of 'my_courses_container_bloc.dart';

/// Represents the state of MyCoursesContainer in the application.
class MyCoursesContainerState extends Equatable {
  MyCoursesContainerState({this.myCoursesContainerModelObj});

  MyCoursesContainerModel? myCoursesContainerModelObj;

  @override
  List<Object?> get props => [
        myCoursesContainerModelObj,
      ];
  MyCoursesContainerState copyWith(
      {MyCoursesContainerModel? myCoursesContainerModelObj}) {
    return MyCoursesContainerState(
      myCoursesContainerModelObj:
          myCoursesContainerModelObj ?? this.myCoursesContainerModelObj,
    );
  }
}
