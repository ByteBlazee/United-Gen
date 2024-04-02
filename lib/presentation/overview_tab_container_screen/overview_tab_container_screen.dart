import 'bloc/overview_tab_container_bloc.dart';
import 'models/overview_tab_container_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/presentation/overview_page/overview_page.dart';
import 'package:ayush_s_application13/presentation/playlists_page/playlists_page.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class OverviewTabContainerScreen extends StatefulWidget {
  const OverviewTabContainerScreen({Key? key})
      : super(
          key: key,
        );

  @override
  OverviewTabContainerScreenState createState() =>
      OverviewTabContainerScreenState();
  static Widget builder(BuildContext context) {
    return BlocProvider<OverviewTabContainerBloc>(
      create: (context) => OverviewTabContainerBloc(OverviewTabContainerState(
        overviewTabContainerModelObj: OverviewTabContainerModel(),
      ))
        ..add(OverviewTabContainerInitialEvent()),
      child: OverviewTabContainerScreen(),
    );
  }
}

class OverviewTabContainerScreenState extends State<OverviewTabContainerScreen>
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

    return BlocBuilder<OverviewTabContainerBloc, OverviewTabContainerState>(
      builder: (context, state) {
        return SafeArea(
          child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: SizedBox(
              width: double.maxFinite,
              child: Column(
                children: [
                  SizedBox(height: 51.v),
                  Expanded(
                    child: SizedBox(
                      width: double.maxFinite,
                      child: Column(
                        children: [
                          _buildMathsTabRow(context),
                          SizedBox(height: 19.v),
                          _buildSixteenColumn(context),
                          SizedBox(height: 18.v),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                              padding: EdgeInsets.only(left: 48.h),
                              child: Text(
                                "lbl_algebra_basic".tr,
                                style: CustomTextStyles.titleLargeBlack900Bold,
                              ),
                            ),
                          ),
                          SizedBox(height: 17.v),
                          Container(
                            height: 52.v,
                            width: 298.h,
                            decoration: BoxDecoration(
                              color: appTheme.gray300,
                              borderRadius: BorderRadius.circular(
                                10.h,
                              ),
                            ),
                            child: TabBar(
                              controller: tabviewController,
                              labelPadding: EdgeInsets.zero,
                              labelColor: appTheme.black900,
                              labelStyle: TextStyle(
                                fontSize: 13.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                              unselectedLabelColor:
                                  appTheme.black900.withOpacity(0.5),
                              unselectedLabelStyle: TextStyle(
                                fontSize: 13.fSize,
                                fontFamily: 'Inter',
                                fontWeight: FontWeight.w700,
                              ),
                              indicatorPadding: EdgeInsets.all(
                                6.5.h,
                              ),
                              indicator: BoxDecoration(
                                color:
                                    theme.colorScheme.onPrimary.withOpacity(1),
                                borderRadius: BorderRadius.circular(
                                  10.h,
                                ),
                                boxShadow: [
                                  BoxShadow(
                                    color: appTheme.black900.withOpacity(0.25),
                                    spreadRadius: 2.h,
                                    blurRadius: 2.h,
                                    offset: Offset(
                                      0,
                                      4,
                                    ),
                                  ),
                                ],
                              ),
                              tabs: [
                                Tab(
                                  child: Text(
                                    "lbl_playlists".tr,
                                  ),
                                ),
                                Tab(
                                  child: Text(
                                    "lbl_overview".tr,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          _buildTabBarViewPager(context),
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
  Widget _buildMathsTabRow(BuildContext context) {
    return SizedBox(
      height: 30.v,
      width: 369.h,
      child: Stack(
        alignment: Alignment.bottomLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Padding(
              padding: EdgeInsets.only(left: 9.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgGroup24,
                    height: 10.v,
                    width: 5.h,
                    margin: EdgeInsets.only(
                      top: 12.v,
                      bottom: 7.v,
                    ),
                  ),
                  Text(
                    "lbl_maths".tr,
                    style: CustomTextStyles.titleLargeBlack900_2,
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgBookmark,
                    height: 15.v,
                    width: 10.h,
                    margin: EdgeInsets.symmetric(vertical: 7.v),
                  ),
                ],
              ),
            ),
          ),
          CustomIconButton(
            height: 24.adaptSize,
            width: 24.adaptSize,
            alignment: Alignment.bottomLeft,
            child: CustomImageView(),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSixteenColumn(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 39.h),
      decoration: AppDecoration.fillOnPrimary.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle37,
            height: 219.v,
            width: 352.h,
            radius: BorderRadius.circular(
              10.h,
            ),
          ),
          SizedBox(height: 16.v),
          Padding(
            padding: EdgeInsets.symmetric(horizontal: 18.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgPauseCircleOutline,
                  height: 27.adaptSize,
                  width: 27.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 12.h,
                    top: 4.v,
                    bottom: 3.v,
                  ),
                  child: Text(
                    "lbl_preview".tr,
                    style: CustomTextStyles.titleSmallInterBlack900,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgFavorite,
                  height: 21.v,
                  width: 25.h,
                  margin: EdgeInsets.symmetric(vertical: 3.v),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgVolumeMuteOutline,
                  height: 25.adaptSize,
                  width: 25.adaptSize,
                  margin: EdgeInsets.only(left: 12.h),
                ),
              ],
            ),
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabBarViewPager(BuildContext context) {
    return Expanded(
      child: SizedBox(
        height: 433.v,
        child: TabBarView(
          controller: tabviewController,
          children: [
            PlaylistsPage(),
            OverviewPage(),
          ],
        ),
      ),
    );
  }
}
