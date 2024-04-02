import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayush_s_application13/presentation/submit_form_screen/models/submit_form_model.dart';
part 'submit_form_event.dart';
part 'submit_form_state.dart';

/// A bloc that manages the state of a SubmitForm according to the event that is dispatched to it.
class SubmitFormBloc extends Bloc<SubmitFormEvent, SubmitFormState> {
  SubmitFormBloc(SubmitFormState initialState) : super(initialState) {
    on<SubmitFormInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<SubmitFormState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<String> fillRadioList() {
    return ["msg_a_cell_membrane", "lbl_b_chloroplast"];
  }

  _onInitialize(
    SubmitFormInitialEvent event,
    Emitter<SubmitFormState> emit,
  ) async {
    emit(state.copyWith(radioGroup: ""));
    emit(state.copyWith(
        submitFormModelObj:
            state.submitFormModelObj?.copyWith(radioList: fillRadioList())));
  }
}
