import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayush_s_application13/presentation/course_deets_screen/models/course_deets_model.dart';
part 'course_deets_event.dart';
part 'course_deets_state.dart';

/// A bloc that manages the state of a CourseDeets according to the event that is dispatched to it.
class CourseDeetsBloc extends Bloc<CourseDeetsEvent, CourseDeetsState> {
  CourseDeetsBloc(CourseDeetsState initialState) : super(initialState) {
    on<CourseDeetsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    CourseDeetsInitialEvent event,
    Emitter<CourseDeetsState> emit,
  ) async {}
}
