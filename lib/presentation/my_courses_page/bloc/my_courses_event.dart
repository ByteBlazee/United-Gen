// ignore_for_file: must_be_immutable

part of 'my_courses_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyCourses widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyCoursesEvent extends Equatable {}

/// Event that is dispatched when the MyCourses widget is first created.
class MyCoursesInitialEvent extends MyCoursesEvent {
  @override
  List<Object?> get props => [];
}
