import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import 'package:table_calendar/table_calendar.dart';
import '../models/viewhierarchylist_item_model.dart';
import 'package:ayush_s_application13/presentation/calendar_page/models/calendar_model.dart';
part 'calendar_event.dart';
part 'calendar_state.dart';

/// A bloc that manages the state of a Calendar according to the event that is dispatched to it.
class CalendarBloc extends Bloc<CalendarEvent, CalendarState> {
  CalendarBloc(CalendarState initialState) : super(initialState) {
    on<CalendarInitialEvent>(_onInitialize);
  }

  List<ViewhierarchylistItemModel> fillViewhierarchylistItemList() {
    return [
      ViewhierarchylistItemModel(
          biologyImage: ImageConstant.imgUnsplash1ppyuzcegI,
          biologyText: "Biology",
          timeText: "12:00 - 12:30 PM"),
      ViewhierarchylistItemModel(
          biologyImage: ImageConstant.imgUnsplash05aKdoh6hw,
          biologyText: "Math",
          timeText: "12:40 - 1:30 PM")
    ];
  }

  _onInitialize(
    CalendarInitialEvent event,
    Emitter<CalendarState> emit,
  ) async {
    emit(state.copyWith(rangeSelectionMode: RangeSelectionMode.toggledOn));
    emit(state.copyWith(
        calendarModelObj: state.calendarModelObj?.copyWith(
            viewhierarchylistItemList: fillViewhierarchylistItemList())));
  }
}
