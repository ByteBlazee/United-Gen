// ignore_for_file: must_be_immutable

part of 'course_deets_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///CourseDeets widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class CourseDeetsEvent extends Equatable {}

/// Event that is dispatched when the CourseDeets widget is first created.
class CourseDeetsInitialEvent extends CourseDeetsEvent {
  @override
  List<Object?> get props => [];
}
