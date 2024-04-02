import 'bloc/login_tab_container_bloc.dart';
import 'models/login_tab_container_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/presentation/login_page/login_page.dart';
import 'package:ayush_s_application13/presentation/signup_page/signup_page.dart';
import 'package:flutter/material.dart';

class LoginTabContainerScreen extends StatefulWidget {
  const LoginTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  LoginTabContainerScreenState createState() => LoginTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<LoginTabContainerBloc>(
      create: (context) => LoginTabContainerBloc(LoginTabContainerState(
        loginTabContainerModelObj: LoginTabContainerModel(),
      ))
        ..add(LoginTabContainerInitialEvent()),
      child: LoginTabContainerScreen(),
    );
  }
}

class LoginTabContainerScreenState extends State<LoginTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 2, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<LoginTabContainerBloc, LoginTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.black900,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 23.v),
                  Expanded(
                    child: SingleChildScrollView(
                      child: Column(
                        children: [
                          _buildTabview(context),
                          SizedBox(
                            height: 836.v,
                            child: TabBarView(
                              controller: tabviewController,
                              children: [
                                LoginPage(),
                                SignupPage(),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
      height: 38.v,
      width: 370.h,
      decoration: BoxDecoration(
        color: appTheme.blueGray10001.withOpacity(0.5),
        borderRadius: BorderRadius.circular(
          10.h,
        ),
      ),
      child: TabBar(
        controller: tabviewController,
        labelPadding: EdgeInsets.zero,
        labelColor: appTheme.black900,
        labelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        unselectedLabelColor: appTheme.black900.withOpacity(0.5),
        unselectedLabelStyle: TextStyle(
          fontSize: 18.fSize,
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w700,
        ),
        indicator: BoxDecoration(
          color: theme.colorScheme.onPrimary.withOpacity(1),
          borderRadius: BorderRadius.circular(
            10.h,
          ),
        ),
        tabs: [
          Tab(
            child: Text(
              "lbl_log_in".tr,
            ),
          ),
          Tab(
            child: Text(
              "lbl_sign_up".tr,
            ),
          ),
        ],
      ),
    );
  }
}
