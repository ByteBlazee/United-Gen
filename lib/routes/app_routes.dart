import 'package:flutter/material.dart';
import 'package:ayush_s_application13/presentation/start_screen/start_screen.dart';
import 'package:ayush_s_application13/presentation/otp_screen/otp_screen.dart';
import 'package:ayush_s_application13/presentation/login_tab_container_screen/login_tab_container_screen.dart';
import 'package:ayush_s_application13/presentation/home_screen/home_screen.dart';
import 'package:ayush_s_application13/presentation/choose_subject_screen/choose_subject_screen.dart';
import 'package:ayush_s_application13/presentation/course_deets_screen/course_deets_screen.dart';
import 'package:ayush_s_application13/presentation/overview_tab_container_screen/overview_tab_container_screen.dart';
import 'package:ayush_s_application13/presentation/welcome_page_after_login_screen/welcome_page_after_login_screen.dart';
import 'package:ayush_s_application13/presentation/my_courses_container_screen/my_courses_container_screen.dart';
import 'package:ayush_s_application13/presentation/test_paper_screen/test_paper_screen.dart';
import 'package:ayush_s_application13/presentation/test_declaration_screen/test_declaration_screen.dart';
import 'package:ayush_s_application13/presentation/question_paper_screen/question_paper_screen.dart';
import 'package:ayush_s_application13/presentation/submit_form_screen/submit_form_screen.dart';
import 'package:ayush_s_application13/presentation/test_report_screen/test_report_screen.dart';
import 'package:ayush_s_application13/presentation/solutions_screen/solutions_screen.dart';
import 'package:ayush_s_application13/presentation/solutions_expanded_screen/solutions_expanded_screen.dart';
import 'package:ayush_s_application13/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String startScreen = '/start_screen';

  static const String signupPage = '/signup_page';

  static const String otpScreen = '/otp_screen';

  static const String loginPage = '/login_page';

  static const String loginTabContainerScreen = '/login_tab_container_screen';

  static const String homeScreen = '/home_screen';

  static const String chooseSubjectScreen = '/choose_subject_screen';

  static const String courseDeetsScreen = '/course_deets_screen';

  static const String playlistsPage = '/playlists_page';

  static const String overviewPage = '/overview_page';

  static const String overviewTabContainerScreen =
      '/overview_tab_container_screen';

  static const String welcomePageAfterLoginScreen =
      '/welcome_page_after_login_screen';

  static const String myCoursesPage = '/my_courses_page';

  static const String myCoursesContainerScreen = '/my_courses_container_screen';

  static const String chatListsPage = '/chat_lists_page';

  static const String calendarPage = '/calendar_page';

  static const String testPaperScreen = '/test_paper_screen';

  static const String testDeclarationScreen = '/test_declaration_screen';

  static const String questionPaperScreen = '/question_paper_screen';

  static const String submitFormScreen = '/submit_form_screen';

  static const String testReportScreen = '/test_report_screen';

  static const String solutionsScreen = '/solutions_screen';

  static const String solutionsExpandedScreen = '/solutions_expanded_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static const String initialRoute = '/initialRoute';

  static Map<String, WidgetBuilder> get routes => {
        startScreen: StartScreen.builder,
        otpScreen: OtpScreen.builder,
        loginTabContainerScreen: LoginTabContainerScreen.builder,
        homeScreen: HomeScreen.builder,
        chooseSubjectScreen: ChooseSubjectScreen.builder,
        courseDeetsScreen: CourseDeetsScreen.builder,
        overviewTabContainerScreen: OverviewTabContainerScreen.builder,
        welcomePageAfterLoginScreen: WelcomePageAfterLoginScreen.builder,
        myCoursesContainerScreen: MyCoursesContainerScreen.builder,
        testPaperScreen: TestPaperScreen.builder,
        testDeclarationScreen: TestDeclarationScreen.builder,
        questionPaperScreen: QuestionPaperScreen.builder,
        submitFormScreen: SubmitFormScreen.builder,
        testReportScreen: TestReportScreen.builder,
        solutionsScreen: SolutionsScreen.builder,
        solutionsExpandedScreen: SolutionsExpandedScreen.builder,
        appNavigationScreen: AppNavigationScreen.builder,
        initialRoute: StartScreen.builder
      };
}
