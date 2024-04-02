import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayush_s_application13/presentation/test_report_screen/models/test_report_model.dart';
part 'test_report_event.dart';
part 'test_report_state.dart';

/// A bloc that manages the state of a TestReport according to the event that is dispatched to it.
class TestReportBloc extends Bloc<TestReportEvent, TestReportState> {
  TestReportBloc(TestReportState initialState) : super(initialState) {
    on<TestReportInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TestReportInitialEvent event,
    Emitter<TestReportState> emit,
  ) async {}
}
