import 'bloc/start_bloc.dart';
import 'models/start_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:flutter/material.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<StartBloc>(
        create: (context) => StartBloc(StartState(startModelObj: StartModel()))
          ..add(StartInitialEvent()),
        child: StartScreen());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return BlocBuilder<StartBloc, StartState>(builder: (context, state) {
      return SafeArea(
          child: Scaffold(
              backgroundColor: theme.colorScheme.primary,
              body: SizedBox(
                  width: double.maxFinite,
                  child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 5.v),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_u".tr,
                                  style: theme.textTheme.displayMedium),
                              TextSpan(
                                  text: "lbl_n".tr,
                                  style: theme.textTheme.displayMedium),
                              TextSpan(
                                  text: "lbl_i".tr,
                                  style: theme.textTheme.displayMedium),
                              TextSpan(
                                  text: "lbl_t".tr,
                                  style: theme.textTheme.displayMedium),
                              TextSpan(
                                  text: "lbl_e".tr,
                                  style: theme.textTheme.displayMedium),
                              TextSpan(
                                  text: "lbl_d".tr,
                                  style: theme.textTheme.displayMedium),
                              TextSpan(
                                  text: "lbl_g".tr,
                                  style: theme.textTheme.displayMedium),
                              TextSpan(
                                  text: "lbl_e".tr,
                                  style: theme.textTheme.displayMedium),
                              TextSpan(
                                  text: "lbl_n".tr,
                                  style: theme.textTheme.displayMedium)
                            ]),
                            textAlign: TextAlign.left)
                      ]))));
    });
  }
}
