import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayush_s_application13/presentation/my_courses_container_screen/models/my_courses_container_model.dart';
part 'my_courses_container_event.dart';
part 'my_courses_container_state.dart';

/// A bloc that manages the state of a MyCoursesContainer according to the event that is dispatched to it.
class MyCoursesContainerBloc
    extends Bloc<MyCoursesContainerEvent, MyCoursesContainerState> {
  MyCoursesContainerBloc(MyCoursesContainerState initialState)
      : super(initialState) {
    on<MyCoursesContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyCoursesContainerInitialEvent event,
    Emitter<MyCoursesContainerState> emit,
  ) async {}
}
