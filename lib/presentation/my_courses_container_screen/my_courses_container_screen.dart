import 'bloc/my_courses_container_bloc.dart';
import 'models/my_courses_container_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/presentation/calendar_page/calendar_page.dart';
import 'package:ayush_s_application13/presentation/chat_lists_page/chat_lists_page.dart';
import 'package:ayush_s_application13/presentation/my_courses_page/my_courses_page.dart';
import 'package:ayush_s_application13/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class MyCoursesContainerScreen extends StatelessWidget {
  MyCoursesContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  static Widget builder(BuildContext context) {
    return BlocProvider<MyCoursesContainerBloc>(
        create: (context) => MyCoursesContainerBloc(MyCoursesContainerState(
            myCoursesContainerModelObj: MyCoursesContainerModel()))
          ..add(MyCoursesContainerInitialEvent()),
        child: MyCoursesContainerScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<MyCoursesContainerBloc, MyCoursesContainerState>(
        builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              body: Navigator(
                  key: navigatorKey,
                  initialRoute: AppRoutes.myCoursesPage,
                  onGenerateRoute: (routeSetting) => PageRouteBuilder(
                      pageBuilder: (ctx, ani, ani1) =>
                          getCurrentPage(context, routeSetting.name!),
                      transitionDuration: Duration(seconds: 0))),
              bottomNavigationBar: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 25.h),
                  child: _buildBottomBar(context))));
    });
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Homeonprimary:
        return "/";
      case BottomBarEnum.Playcircledeeppurple50:
        return AppRoutes.myCoursesPage;
      case BottomBarEnum.Calendar:
        return AppRoutes.calendarPage;
      case BottomBarEnum.Chatboxellipses:
        return AppRoutes.chatListsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(
    BuildContext context,
    String currentRoute,
  ) {
    switch (currentRoute) {
      case AppRoutes.myCoursesPage:
        return MyCoursesPage();
      case AppRoutes.calendarPage:
        return CalendarPage();
      case AppRoutes.chatListsPage:
        return ChatListsPage();
      default:
        return DefaultWidget();
    }
  }
}
