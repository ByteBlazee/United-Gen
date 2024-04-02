import '../../../core/app_export.dart';

/// This class is used in the [dynamicviewlist_item_widget] screen.
class DynamicviewlistItemModel {
  DynamicviewlistItemModel({
    this.dynamicText,
    this.dynamicText1,
    this.dynamicText2,
    this.id,
  }) {
    dynamicText = dynamicText ?? "25%";
    dynamicText1 = dynamicText1 ?? "Mathematics";
    dynamicText2 = dynamicText2 ?? "Algebra";
    id = id ?? "";
  }

  String? dynamicText;

  String? dynamicText1;

  String? dynamicText2;

  String? id;
}
