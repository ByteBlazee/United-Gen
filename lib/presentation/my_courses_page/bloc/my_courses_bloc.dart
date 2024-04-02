import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/dynamicviewlist_item_model.dart';
import 'package:ayush_s_application13/presentation/my_courses_page/models/my_courses_model.dart';
part 'my_courses_event.dart';
part 'my_courses_state.dart';

/// A bloc that manages the state of a MyCourses according to the event that is dispatched to it.
class MyCoursesBloc extends Bloc<MyCoursesEvent, MyCoursesState> {
  MyCoursesBloc(MyCoursesState initialState) : super(initialState) {
    on<MyCoursesInitialEvent>(_onInitialize);
  }

  _onInitialize(
    MyCoursesInitialEvent event,
    Emitter<MyCoursesState> emit,
  ) async {
    emit(state.copyWith(
        myCoursesModelObj: state.myCoursesModelObj?.copyWith(
            dynamicviewlistItemList: fillDynamicviewlistItemList())));
  }

  List<DynamicviewlistItemModel> fillDynamicviewlistItemList() {
    return [
      DynamicviewlistItemModel(
          dynamicText: "25%",
          dynamicText1: "Mathematics",
          dynamicText2: "Algebra"),
      DynamicviewlistItemModel(
          dynamicText: "35%", dynamicText1: "English", dynamicText2: "Tenses"),
      DynamicviewlistItemModel(
          dynamicText: "60%",
          dynamicText1: "Social Science",
          dynamicText2: "Mughal Empire"),
      DynamicviewlistItemModel(
          dynamicText: "25%",
          dynamicText1: "Science",
          dynamicText2: "Reproduction in Animals")
    ];
  }
}
