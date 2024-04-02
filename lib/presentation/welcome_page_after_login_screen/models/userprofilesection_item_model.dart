import '../../../core/app_export.dart';

/// This class is used in the [userprofilesection_item_widget] screen.
class UserprofilesectionItemModel {
  UserprofilesectionItemModel({
    this.createIcon,
    this.testExamTitle,
    this.preparationText,
    this.arrowRightImage,
    this.id,
  }) {
    createIcon = createIcon ?? ImageConstant.imgCreateSharp;
    testExamTitle = testExamTitle ?? "Test Exam ";
    preparationText = preparationText ?? "Let’s check your preparation!";
    arrowRightImage = arrowRightImage ?? ImageConstant.imgArrowRight;
    id = id ?? "";
  }

  String? createIcon;

  String? testExamTitle;

  String? preparationText;

  String? arrowRightImage;

  String? id;
}
