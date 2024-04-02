import '../models/userprofilesection_item_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class UserprofilesectionItemWidget extends StatelessWidget {
  UserprofilesectionItemWidget(
    this.userprofilesectionItemModelObj, {
    Key? key,
    this.onTapUserProfile,
  }) : super(
          key: key,
        );

  UserprofilesectionItemModel userprofilesectionItemModelObj;

  VoidCallback? onTapUserProfile;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTapUserProfile!.call();
      },
      child: Container(
        padding: EdgeInsets.symmetric(
          horizontal: 23.h,
          vertical: 10.v,
        ),
        decoration: AppDecoration.outlineSecondaryContainer.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder10,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: EdgeInsets.only(
                top: 3.v,
                bottom: 4.v,
              ),
              child: CustomIconButton(
                height: 70.adaptSize,
                width: 70.adaptSize,
                padding: EdgeInsets.all(7.h),
                decoration: IconButtonStyleHelper.fillOnPrimary,
                child: CustomImageView(
                  imagePath: userprofilesectionItemModelObj?.createIcon,
                ),
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 16.h,
                top: 2.v,
              ),
              child: Column(
                children: [
                  Text(
                    userprofilesectionItemModelObj.testExamTitle!,
                    style: CustomTextStyles.titleLargeBlack900Bold,
                  ),
                  SizedBox(height: 4.v),
                  SizedBox(
                    width: 101.h,
                    child: Text(
                      userprofilesectionItemModelObj.preparationText!,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumBlack900,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            CustomImageView(
              imagePath: userprofilesectionItemModelObj?.arrowRightImage,
              height: 20.v,
              width: 10.h,
              margin: EdgeInsets.only(
                top: 28.v,
                right: 1.h,
                bottom: 29.v,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
