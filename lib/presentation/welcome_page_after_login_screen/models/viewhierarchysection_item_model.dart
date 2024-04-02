import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchysection_item_widget] screen.
class ViewhierarchysectionItemModel {
  ViewhierarchysectionItemModel({
    this.biology,
    this.imageTime,
    this.textTime,
    this.imageBiology,
    this.id,
  }) {
    biology = biology ?? "Biology";
    imageTime = imageTime ?? ImageConstant.imgTimeOutline;
    textTime = textTime ?? "Time : 1:00 hrs";
    imageBiology = imageBiology ?? ImageConstant.imgRectangle37;
    id = id ?? "";
  }

  String? biology;

  String? imageTime;

  String? textTime;

  String? imageBiology;

  String? id;
}
