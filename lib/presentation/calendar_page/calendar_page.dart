import '../calendar_page/widgets/viewhierarchylist_item_widget.dart';
import 'bloc/calendar_bloc.dart';
import 'models/calendar_model.dart';
import 'models/viewhierarchylist_item_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';

class CalendarPage extends StatelessWidget {
  const CalendarPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<CalendarBloc>(
        create: (context) =>
            CalendarBloc(CalendarState(calendarModelObj: CalendarModel()))
              ..add(CalendarInitialEvent()),
        child: CalendarPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary,
                child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 15.h),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(height: 2.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 11.h),
                                  child: Row(children: [
                                    Padding(
                                        padding: EdgeInsets.only(bottom: 4.v),
                                        child: CustomIconButton(
                                            height: 24.adaptSize,
                                            width: 24.adaptSize,
                                            padding: EdgeInsets.all(7.h),
                                            onTap: () {
                                              onTapBtnIconButton(context);
                                            },
                                            child: CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgGroup24))),
                                    Padding(
                                        padding: EdgeInsets.only(left: 14.h),
                                        child: Text("lbl_class_calendar".tr,
                                            style: CustomTextStyles
                                                .titleMediumBlack90019))
                                  ]))),
                          SizedBox(height: 18.v),
                          _buildClassCalendarRow(context),
                          SizedBox(height: 39.v),
                          _buildViewHierarchyList(context)
                        ])))));
  }

  /// Section Widget
  Widget _buildClassCalendarRow(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(right: 1.h),
        padding: EdgeInsets.symmetric(horizontal: 17.h, vertical: 25.v),
        decoration: AppDecoration.fillGray20001
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder20),
        child: Column(mainAxisSize: MainAxisSize.min, children: [
          Padding(
              padding: EdgeInsets.only(left: 11.h, right: 15.h),
              child:
                  Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Text("lbl_mon".tr, style: theme.textTheme.labelMedium),
                Padding(
                    padding: EdgeInsets.only(left: 28.h),
                    child:
                        Text("lbl_tue".tr, style: theme.textTheme.labelMedium)),
                Spacer(flex: 24),
                Text("lbl_wed".tr, style: theme.textTheme.labelMedium),
                Padding(
                    padding: EdgeInsets.only(left: 29.h),
                    child:
                        Text("lbl_thu".tr, style: theme.textTheme.labelMedium)),
                Spacer(flex: 23),
                Text("lbl_fri".tr, style: theme.textTheme.labelMedium),
                Spacer(flex: 27),
                Text("lbl_sat".tr, style: theme.textTheme.labelMedium),
                Spacer(flex: 23),
                Text("lbl_sun".tr, style: theme.textTheme.labelMedium)
              ])),
          SizedBox(height: 15.v),
          BlocBuilder<CalendarBloc, CalendarState>(builder: (context, state) {
            return SizedBox(
                height: 267.v,
                width: 364.h,
                child: TableCalendar(
                    locale: 'en_US',
                    firstDay: DateTime(DateTime.now().year - 5),
                    lastDay: DateTime(DateTime.now().year + 5),
                    calendarFormat: CalendarFormat.month,
                    rangeSelectionMode: state.rangeSelectionMode,
                    startingDayOfWeek: StartingDayOfWeek.sunday,
                    headerStyle: HeaderStyle(
                        formatButtonVisible: false, titleCentered: true),
                    calendarStyle: CalendarStyle(
                        outsideDaysVisible: false, isTodayHighlighted: true),
                    daysOfWeekStyle: DaysOfWeekStyle(),
                    focusedDay: state.focusedDay ?? DateTime.now(),
                    rangeStartDay: state.rangeStart,
                    rangeEndDay: state.rangeEnd,
                    onDaySelected: (selectedDay, focusedDay) {
                      if (!isSameDay(state.selectedDay, selectedDay)) {
                        state.focusedDay = focusedDay;
                        state.selectedDay = selectedDay;
                        state.rangeSelectionMode = RangeSelectionMode.toggledOn;
                      }
                    },
                    onRangeSelected: (start, end, focusedDay) {
                      state.focusedDay = focusedDay;
                      state.rangeEnd = end;
                      state.rangeStart = start;
                      state.rangeSelectionMode = RangeSelectionMode.toggledOn;
                    },
                    onPageChanged: (focusedDay) {
                      state.focusedDay = focusedDay;
                    }));
          }),
          SizedBox(height: 19.v)
        ]));
  }

  /// Section Widget
  Widget _buildViewHierarchyList(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(right: 1.h),
        child: BlocSelector<CalendarBloc, CalendarState, CalendarModel?>(
            selector: (state) => state.calendarModelObj,
            builder: (context, calendarModelObj) {
              return ListView.separated(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  separatorBuilder: (context, index) {
                    return SizedBox(height: 27.v);
                  },
                  itemCount:
                      calendarModelObj?.viewhierarchylistItemList.length ?? 0,
                  itemBuilder: (context, index) {
                    ViewhierarchylistItemModel model =
                        calendarModelObj?.viewhierarchylistItemList[index] ??
                            ViewhierarchylistItemModel();
                    return ViewhierarchylistItemWidget(model);
                  });
            }));
  }

  /// Navigates to the welcomePageAfterLoginScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomePageAfterLoginScreen,
    );
  }
}
