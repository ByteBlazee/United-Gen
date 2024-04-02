// ignore_for_file: must_be_immutable

part of 'my_courses_container_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///MyCoursesContainer widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class MyCoursesContainerEvent extends Equatable {}

/// Event that is dispatched when the MyCoursesContainer widget is first created.
class MyCoursesContainerInitialEvent extends MyCoursesContainerEvent {
  @override
  List<Object?> get props => [];
}
