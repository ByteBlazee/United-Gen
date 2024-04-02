import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayush_s_application13/presentation/login_tab_container_screen/models/login_tab_container_model.dart';
part 'login_tab_container_event.dart';
part 'login_tab_container_state.dart';

/// A bloc that manages the state of a LoginTabContainer according to the event that is dispatched to it.
class LoginTabContainerBloc
    extends Bloc<LoginTabContainerEvent, LoginTabContainerState> {
  LoginTabContainerBloc(LoginTabContainerState initialState)
      : super(initialState) {
    on<LoginTabContainerInitialEvent>(_onInitialize);
  }

  _onInitialize(
    LoginTabContainerInitialEvent event,
    Emitter<LoginTabContainerState> emit,
  ) async {}
}
