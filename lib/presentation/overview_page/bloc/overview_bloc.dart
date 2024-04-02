import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayush_s_application13/presentation/overview_page/models/overview_model.dart';
part 'overview_event.dart';
part 'overview_state.dart';

/// A bloc that manages the state of a Overview according to the event that is dispatched to it.
class OverviewBloc extends Bloc<OverviewEvent, OverviewState> {
  OverviewBloc(OverviewState initialState) : super(initialState) {
    on<OverviewInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OverviewInitialEvent event,
    Emitter<OverviewState> emit,
  ) async {}
}
