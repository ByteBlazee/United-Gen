import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.dynamicText,
    this.dynamicText1,
    this.dynamicText2,
    this.dynamicImage,
    this.id,
  }) {
    dynamicText = dynamicText ?? "1";
    dynamicText1 = dynamicText1 ?? "Algebraic Basic";
    dynamicText2 = dynamicText2 ?? "0:00/20:00";
    dynamicImage = dynamicImage ?? ImageConstant.imgPlay;
    id = id ?? "";
  }

  String? dynamicText;

  String? dynamicText1;

  String? dynamicText2;

  String? dynamicImage;

  String? id;
}
