import '../../../core/app_export.dart';

/// This class is used in the [chatlists_item_widget] screen.
class ChatlistsItemModel {
  ChatlistsItemModel({
    this.group,
    this.id,
  }) {
    group = group ?? ImageConstant.imgGroup42;
    id = id ?? "";
  }

  String? group;

  String? id;
}
