import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayush_s_application13/presentation/question_paper_screen/models/question_paper_model.dart';
part 'question_paper_event.dart';
part 'question_paper_state.dart';

/// A bloc that manages the state of a QuestionPaper according to the event that is dispatched to it.
class QuestionPaperBloc extends Bloc<QuestionPaperEvent, QuestionPaperState> {
  QuestionPaperBloc(QuestionPaperState initialState) : super(initialState) {
    on<QuestionPaperInitialEvent>(_onInitialize);
    on<ChangeRadioButtonEvent>(_changeRadioButton);
  }

  _changeRadioButton(
    ChangeRadioButtonEvent event,
    Emitter<QuestionPaperState> emit,
  ) {
    emit(state.copyWith(radioGroup: event.value));
  }

  List<String> fillRadioList() {
    return [
      "msg_a_cell_membrane",
      "lbl_b_chloroplast",
      "lbl_c_nucleus",
      "lbl_d_mitochondria"
    ];
  }

  _onInitialize(
    QuestionPaperInitialEvent event,
    Emitter<QuestionPaperState> emit,
  ) async {
    emit(state.copyWith(radioGroup: ""));
    emit(state.copyWith(
        questionPaperModelObj:
            state.questionPaperModelObj?.copyWith(radioList: fillRadioList())));
  }
}
