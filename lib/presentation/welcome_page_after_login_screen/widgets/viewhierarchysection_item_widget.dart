import '../models/viewhierarchysection_item_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ViewhierarchysectionItemWidget extends StatelessWidget {
  ViewhierarchysectionItemWidget(
    this.viewhierarchysectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ViewhierarchysectionItemModel viewhierarchysectionItemModelObj;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 176.h,
      child: Card(
        clipBehavior: Clip.antiAlias,
        elevation: 0,
        margin: EdgeInsets.all(0),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Container(
          height: 166.v,
          width: 176.h,
          decoration: AppDecoration.outlineBlack900.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder10,
          ),
          child: Stack(
            alignment: Alignment.topCenter,
            children: [
              Align(
                alignment: Alignment.center,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 11.h,
                    vertical: 4.v,
                  ),
                  decoration: AppDecoration.fillOnPrimary.copyWith(
                    borderRadius: BorderRadiusStyle.roundedBorder10,
                  ),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      SizedBox(height: 129.v),
                      Padding(
                        padding: EdgeInsets.only(left: 1.h),
                        child: Text(
                          viewhierarchysectionItemModelObj.biology!,
                          style: CustomTextStyles.labelLargeInterBlack900,
                        ),
                      ),
                      Row(
                        children: [
                          CustomImageView(
                            imagePath:
                                viewhierarchysectionItemModelObj?.imageTime,
                            height: 12.adaptSize,
                            width: 12.adaptSize,
                          ),
                          Padding(
                            padding: EdgeInsets.only(left: 4.h),
                            child: Text(
                              viewhierarchysectionItemModelObj.textTime!,
                              style: CustomTextStyles.bodySmallInterBlack900,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
              CustomImageView(
                imagePath: viewhierarchysectionItemModelObj?.imageBiology,
                height: 129.v,
                width: 176.h,
                radius: BorderRadius.circular(
                  10.h,
                ),
                alignment: Alignment.topCenter,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
