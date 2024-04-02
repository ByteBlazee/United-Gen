import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayush_s_application13/presentation/test_paper_screen/models/test_paper_model.dart';
part 'test_paper_event.dart';
part 'test_paper_state.dart';

/// A bloc that manages the state of a TestPaper according to the event that is dispatched to it.
class TestPaperBloc extends Bloc<TestPaperEvent, TestPaperState> {
  TestPaperBloc(TestPaperState initialState) : super(initialState) {
    on<TestPaperInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TestPaperInitialEvent event,
    Emitter<TestPaperState> emit,
  ) async {}
}
