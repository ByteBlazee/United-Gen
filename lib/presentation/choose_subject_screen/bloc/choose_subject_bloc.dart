import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayush_s_application13/presentation/choose_subject_screen/models/choose_subject_model.dart';
part 'choose_subject_event.dart';
part 'choose_subject_state.dart';

/// A bloc that manages the state of a ChooseSubject according to the event that is dispatched to it.
class ChooseSubjectBloc extends Bloc<ChooseSubjectEvent, ChooseSubjectState> {
  ChooseSubjectBloc(ChooseSubjectState initialState) : super(initialState) {
    on<ChooseSubjectInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
    on<ChangeRadioButton1Event>(_changeRadioButton1);
    on<ChangeRadioButton2Event>(_changeRadioButton2);
    on<ChangeRadioButton3Event>(_changeRadioButton3);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<ChooseSubjectState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  _changeRadioButton1(
    ChangeRadioButton1Event event,
    Emitter<ChooseSubjectState> emit,
  ) {
    emit(state.copyWith(radioGroup1: event.value));
  }

  _changeRadioButton2(
    ChangeRadioButton2Event event,
    Emitter<ChooseSubjectState> emit,
  ) {
    emit(state.copyWith(radioGroup2: event.value));
  }

  _changeRadioButton3(
    ChangeRadioButton3Event event,
    Emitter<ChooseSubjectState> emit,
  ) {
    emit(state.copyWith(radioGroup3: event.value));
  }

  _onInitialize(
    ChooseSubjectInitialEvent event,
    Emitter<ChooseSubjectState> emit,
  ) async {
    emit(state.copyWith(
        radioGroup: "", radioGroup1: "", radioGroup2: "", radioGroup3: ""));
  }
}
