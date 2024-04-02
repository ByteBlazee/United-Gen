import '../models/dynamicviewlist_item_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DynamicviewlistItemWidget extends StatelessWidget {
  DynamicviewlistItemWidget(
    this.dynamicviewlistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DynamicviewlistItemModel dynamicviewlistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 24.h,
          vertical: 19.v,
        ),
        decoration: AppDecoration.fillBluegray50.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              width: 207.h,
              margin: EdgeInsets.only(bottom: 3.v),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  DottedBorder(
                    color: appTheme.cyan400,
                    padding: EdgeInsets.only(
                      left: 6.h,
                      top: 6.v,
                      right: 6.h,
                      bottom: 6.v,
                    ),
                    strokeWidth: 6.h,
                    radius: Radius.circular(30),
                    borderType: BorderType.RRect,
                    dashPattern: [
                      13,
                      13,
                    ],
                    child: Container(
                      padding: EdgeInsets.symmetric(
                        horizontal: 7.h,
                        vertical: 11.v,
                      ),
                      decoration: AppDecoration.outlineCyan.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder30,
                      ),
                      child: Text(
                        dynamicviewlistItemModelObj.dynamicText!,
                        style: CustomTextStyles.titleSmallBold,
                      ),
                    ),
                  ),
                  Padding(
                    padding: EdgeInsets.only(top: 2.v),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          dynamicviewlistItemModelObj.dynamicText1!,
                          style: CustomTextStyles.titleMediumBlack900SemiBold,
                        ),
                        SizedBox(height: 8.v),
                        Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text(
                            dynamicviewlistItemModelObj.dynamicText2!,
                            style: theme.textTheme.bodyMedium,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            CustomImageView(
              imagePath: ImageConstant.imgGroup21,
              height: 10.v,
              width: 5.h,
              margin: EdgeInsets.only(
                top: 24.v,
                bottom: 29.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
