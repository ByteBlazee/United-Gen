import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayush_s_application13/presentation/solutions_screen/models/solutions_model.dart';
part 'solutions_event.dart';
part 'solutions_state.dart';

/// A bloc that manages the state of a Solutions according to the event that is dispatched to it.
class SolutionsBloc extends Bloc<SolutionsEvent, SolutionsState> {
  SolutionsBloc(SolutionsState initialState) : super(initialState) {
    on<SolutionsInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
    on<ChangeCheckBox2Event>(_changeCheckBox2);
    on<ChangeCheckBox3Event>(_changeCheckBox3);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SolutionsState> emit,
  ) {
    emit(state.copyWith(englishKeyTwoCheckBox: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<SolutionsState> emit,
  ) {
    emit(state.copyWith(englishKeyTwoCheckBox1: event.value));
  }

  _changeCheckBox2(
    ChangeCheckBox2Event event,
    Emitter<SolutionsState> emit,
  ) {
    emit(state.copyWith(englishKeyTwoCheckBox2: event.value));
  }

  _changeCheckBox3(
    ChangeCheckBox3Event event,
    Emitter<SolutionsState> emit,
  ) {
    emit(state.copyWith(englishKeyTwoCheckBox3: event.value));
  }

  _onInitialize(
    SolutionsInitialEvent event,
    Emitter<SolutionsState> emit,
  ) async {
    emit(state.copyWith(
        englishKeyTwoCheckBox: false,
        englishKeyTwoCheckBox1: false,
        englishKeyTwoCheckBox2: false,
        englishKeyTwoCheckBox3: false));
  }
}
