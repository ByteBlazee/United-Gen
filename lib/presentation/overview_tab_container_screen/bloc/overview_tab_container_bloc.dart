import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayush_s_application13/presentation/overview_tab_container_screen/models/overview_tab_container_model.dart';
part 'overview_tab_container_event.dart';
part 'overview_tab_container_state.dart';

/// A bloc that manages the state of a OverviewTabContainer according to the event that is dispatched to it.
class OverviewTabContainerBloc
    extends Bloc<OverviewTabContainerEvent, OverviewTabContainerState> {
  OverviewTabContainerBloc(OverviewTabContainerState initialState)
      : super(initialState) {
    on<OverviewTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    OverviewTabContainerInitialEvent event,
    Emitter<OverviewTabContainerState> emit,
  ) async {}
}
