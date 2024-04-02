import 'bloc/overview_bloc.dart';
import 'models/overview_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class OverviewPage extends StatefulWidget {
  const OverviewPage({Key? key})
      : super(
          key: key,
        );

  @override
  OverviewPageState createState() => OverviewPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OverviewBloc>(
      create: (context) => OverviewBloc(OverviewState(
        overviewModelObj: OverviewModel(),
      ))
        ..add(OverviewInitialEvent()),
      child: OverviewPage(),
    );
  }
}

class OverviewPageState extends State<OverviewPage>
    with AutomaticKeepAliveClientMixin<OverviewPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return BlocBuilder<OverviewBloc, OverviewState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Container(
              width: double.maxFinite,
              decoration: AppDecoration.fillWhiteA,
              child: Column(
                children: [
                  SizedBox(height: 20.v),
                  Padding(
                    padding: EdgeInsets.only(
                      left: 39.h,
                      right: 30.h,
                    ),
                    child: Column(
                      children: [
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Row(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgRectangle52,
                                height: 80.v,
                                width: 76.h,
                                radius: BorderRadius.circular(
                                  10.h,
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.only(
                                  left: 6.h,
                                  top: 14.v,
                                  bottom: 23.v,
                                ),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text(
                                      "lbl_jenny_francis".tr,
                                      style: theme.textTheme.titleSmall,
                                    ),
                                    Padding(
                                      padding: EdgeInsets.only(left: 3.h),
                                      child: Text(
                                        "lbl_math_teacher".tr,
                                        style: CustomTextStyles
                                            .bodyMediumBlack90013,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(height: 24.v),
                        SizedBox(
                          width: 358.h,
                          child: Text(
                            "msg_lorem_ipsum_dolor2".tr,
                            maxLines: 5,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodyMediumInterBlack90013,
                          ),
                        ),
                        SizedBox(height: 21.v),
                        _buildTopicsColumn(context),
                      ],
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
  Widget _buildTopicsColumn(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 2.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_topics".tr,
            style: CustomTextStyles.titleMediumInterBlack900,
          ),
          SizedBox(height: 8.v),
          SizedBox(
            width: 169.h,
            child: Text(
              "msg_exponent_expres".tr,
              maxLines: 7,
              overflow: TextOverflow.ellipsis,
              style: CustomTextStyles.bodyMediumInterBlack900,
            ),
          ),
        ],
      ),
    );
  }
}
