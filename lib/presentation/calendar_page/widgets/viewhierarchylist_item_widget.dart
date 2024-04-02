import '../models/viewhierarchylist_item_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchylistItemWidget extends StatelessWidget {
  ViewhierarchylistItemWidget(
    this.viewhierarchylistItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchylistItemModel viewhierarchylistItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.fillDeepPurple.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          SizedBox(
            width: 224.h,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomImageView(
                  imagePath: viewhierarchylistItemModelObj?.biologyImage,
                  height: 80.adaptSize,
                  width: 80.adaptSize,
                  radius: BorderRadius.circular(
                    10.h,
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(
                    top: 3.v,
                    bottom: 5.v,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          viewhierarchylistItemModelObj.biologyText!,
                          style: CustomTextStyles.titleMediumBlack900,
                        ),
                      ),
                      SizedBox(height: 3.v),
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: "lbl_chapter_2".tr,
                              style: CustomTextStyles.labelLargeBold,
                            ),
                            TextSpan(
                              text: "lbl_kingdom".tr,
                              style: CustomTextStyles.labelLargeBlack900,
                            ),
                          ],
                        ),
                        textAlign: TextAlign.left,
                      ),
                      SizedBox(height: 2.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Row(
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgClockBlack900,
                              height: 20.adaptSize,
                              width: 20.adaptSize,
                            ),
                            Padding(
                              padding: EdgeInsets.only(
                                left: 6.h,
                                top: 2.v,
                                bottom: 2.v,
                              ),
                              child: Text(
                                viewhierarchylistItemModelObj.timeText!,
                                style: CustomTextStyles.labelMediumSemiBold,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgArrowRightBlack900,
            height: 25.adaptSize,
            width: 25.adaptSize,
            margin: EdgeInsets.only(
              top: 27.v,
              bottom: 28.v,
            ),
          ),
        ],
      ),
    );
  }
}
