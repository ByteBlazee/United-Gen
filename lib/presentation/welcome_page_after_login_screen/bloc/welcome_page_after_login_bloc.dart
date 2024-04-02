import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/viewhierarchysection_item_model.dart';
import '../models/userprofilesection_item_model.dart';
import 'package:ayush_s_application13/presentation/welcome_page_after_login_screen/models/welcome_page_after_login_model.dart';
part 'welcome_page_after_login_event.dart';
part 'welcome_page_after_login_state.dart';

/// A bloc that manages the state of a WelcomePageAfterLogin according to the event that is dispatched to it.
class WelcomePageAfterLoginBloc
    extends Bloc<WelcomePageAfterLoginEvent, WelcomePageAfterLoginState> {
  WelcomePageAfterLoginBloc(WelcomePageAfterLoginState initialState)
      : super(initialState) {
    on<WelcomePageAfterLoginInitialEvent>(_onInitialize);
  }

  _onInitialize(
    WelcomePageAfterLoginInitialEvent event,
    Emitter<WelcomePageAfterLoginState> emit,
  ) async {
    emit(state.copyWith(
        welcomePageAfterLoginModelObj: state.welcomePageAfterLoginModelObj
            ?.copyWith(
                viewhierarchysectionItemList:
                    fillViewhierarchysectionItemList(),
                userprofilesectionItemList: fillUserprofilesectionItemList())));
  }

  List<ViewhierarchysectionItemModel> fillViewhierarchysectionItemList() {
    return [
      ViewhierarchysectionItemModel(
          biology: "Biology",
          imageTime: ImageConstant.imgTimeOutline,
          textTime: "Time : 1:00 hrs",
          imageBiology: ImageConstant.imgRectangle37)
    ];
  }

  List<UserprofilesectionItemModel> fillUserprofilesectionItemList() {
    return [
      UserprofilesectionItemModel(
          createIcon: ImageConstant.imgCreateSharp,
          testExamTitle: "Test Exam ",
          preparationText: "Let’s check your preparation!",
          arrowRightImage: ImageConstant.imgArrowRight)
    ];
  }
}
