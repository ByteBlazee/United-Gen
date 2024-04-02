import '../my_courses_page/widgets/dynamicviewlist_item_widget.dart';
import 'bloc/my_courses_bloc.dart';
import 'models/dynamicviewlist_item_model.dart';
import 'models/my_courses_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class MyCoursesPage extends StatelessWidget {
  const MyCoursesPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<MyCoursesBloc>(
        create: (context) =>
            MyCoursesBloc(MyCoursesState(myCoursesModelObj: MyCoursesModel()))
              ..add(MyCoursesInitialEvent()),
        child: MyCoursesPage());
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
                    padding:
                        EdgeInsets.symmetric(horizontal: 14.h, vertical: 51.v),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding:
                                        EdgeInsets.only(top: 3.v, bottom: 10.v),
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
                                    child: Text("lbl_my_courses".tr,
                                        style: theme.textTheme.headlineSmall))
                              ]),
                          SizedBox(height: 58.v),
                          _buildDynamicViewList(context)
                        ])))));
  }

  /// Section Widget
  Widget _buildDynamicViewList(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 15.h),
            child: BlocSelector<MyCoursesBloc, MyCoursesState, MyCoursesModel?>(
                selector: (state) => state.myCoursesModelObj,
                builder: (context, myCoursesModelObj) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return SizedBox(height: 22.v);
                      },
                      itemCount:
                          myCoursesModelObj?.dynamicviewlistItemList.length ??
                              0,
                      itemBuilder: (context, index) {
                        DynamicviewlistItemModel model =
                            myCoursesModelObj?.dynamicviewlistItemList[index] ??
                                DynamicviewlistItemModel();
                        return DynamicviewlistItemWidget(model);
                      });
                })));
  }

  /// Navigates to the welcomePageAfterLoginScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomePageAfterLoginScreen,
    );
  }
}
