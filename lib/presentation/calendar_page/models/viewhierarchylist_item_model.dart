import '../../../core/app_export.dart';

/// This class is used in the [viewhierarchylist_item_widget] screen.
class ViewhierarchylistItemModel {
  ViewhierarchylistItemModel({
    this.biologyImage,
    this.biologyText,
    this.timeText,
    this.id,
  }) {
    biologyImage = biologyImage ?? ImageConstant.imgUnsplash1ppyuzcegI;
    biologyText = biologyText ?? "Biology";
    timeText = timeText ?? "12:00 - 12:30 PM";
    id = id ?? "";
  }

  String? biologyImage;

  String? biologyText;

  String? timeText;

  String? id;
}
