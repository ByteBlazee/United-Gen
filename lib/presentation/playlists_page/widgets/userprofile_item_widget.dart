import '../models/userprofile_item_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 18.h,
        vertical: 14.v,
      ),
      decoration: AppDecoration.outlineBlack.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder10,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 35.adaptSize,
            margin: EdgeInsets.only(
              top: 1.v,
              bottom: 5.v,
            ),
            padding: EdgeInsets.symmetric(
              horizontal: 13.h,
              vertical: 2.v,
            ),
            decoration: AppDecoration.fillGray10001.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder17,
            ),
            child: Text(
              userprofileItemModelObj.dynamicText!,
              style: CustomTextStyles.titleLargeBlack900_1,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              left: 17.h,
              top: 1.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  userprofileItemModelObj.dynamicText1!,
                  style: theme.textTheme.titleSmall,
                ),
                Text(
                  userprofileItemModelObj.dynamicText2!,
                  style: theme.textTheme.labelLarge,
                ),
              ],
            ),
          ),
          Spacer(),
          CustomImageView(
            imagePath: userprofileItemModelObj?.dynamicImage,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(
              top: 7.v,
              right: 5.h,
              bottom: 10.v,
            ),
          ),
        ],
      ),
    );
  }
}
