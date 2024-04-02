import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayush_s_application13/presentation/solutions_expanded_screen/models/solutions_expanded_model.dart';
part 'solutions_expanded_event.dart';
part 'solutions_expanded_state.dart';

/// A bloc that manages the state of a SolutionsExpanded according to the event that is dispatched to it.
class SolutionsExpandedBloc
    extends Bloc<SolutionsExpandedEvent, SolutionsExpandedState> {
  SolutionsExpandedBloc(SolutionsExpandedState initialState)
      : super(initialState) {
    on<SolutionsExpandedInitialEvent>(_onInitialize);
    on<ChangeCheckBoxEvent>(_changeCheckBox);
    on<ChangeCheckBox1Event>(_changeCheckBox1);
  }

  _changeCheckBox(
    ChangeCheckBoxEvent event,
    Emitter<SolutionsExpandedState> emit,
  ) {
    emit(state.copyWith(question1CheckBox: event.value));
  }

  _changeCheckBox1(
    ChangeCheckBox1Event event,
    Emitter<SolutionsExpandedState> emit,
  ) {
    emit(state.copyWith(question2CheckBox: event.value));
  }

  _onInitialize(
    SolutionsExpandedInitialEvent event,
    Emitter<SolutionsExpandedState> emit,
  ) async {
    emit(state.copyWith(question1CheckBox: false, question2CheckBox: false));
  }
}
