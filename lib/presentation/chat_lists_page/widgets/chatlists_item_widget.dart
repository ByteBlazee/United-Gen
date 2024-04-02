import '../models/chatlists_item_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ChatlistsItemWidget extends StatelessWidget {
  ChatlistsItemWidget(
    this.chatlistsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ChatlistsItemModel chatlistsItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: CustomImageView(
        imagePath: chatlistsItemModelObj?.group,
        height: 426.v,
        width: 50.h,
      ),
    );
  }
}
