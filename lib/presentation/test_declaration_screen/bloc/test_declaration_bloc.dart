import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:ayush_s_application13/presentation/test_declaration_screen/models/test_declaration_model.dart';
part 'test_declaration_event.dart';
part 'test_declaration_state.dart';

/// A bloc that manages the state of a TestDeclaration according to the event that is dispatched to it.
class TestDeclarationBloc
    extends Bloc<TestDeclarationEvent, TestDeclarationState> {
  TestDeclarationBloc(TestDeclarationState initialState) : super(initialState) {
    on<TestDeclarationInitialEvent>(_onInitialize);
  }

  _onInitialize(
    TestDeclarationInitialEvent event,
    Emitter<TestDeclarationState> emit,
  ) async {}
}
