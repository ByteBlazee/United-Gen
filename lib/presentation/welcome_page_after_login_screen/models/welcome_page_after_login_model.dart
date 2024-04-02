// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'viewhierarchysection_item_model.dart';
import 'userprofilesection_item_model.dart';

/// This class defines the variables used in the [welcome_page_after_login_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class WelcomePageAfterLoginModel extends Equatable {
  WelcomePageAfterLoginModel({
    this.viewhierarchysectionItemList = const [],
    this.userprofilesectionItemList = const [],
  }) {}

  List<ViewhierarchysectionItemModel> viewhierarchysectionItemList;

  List<UserprofilesectionItemModel> userprofilesectionItemList;

  WelcomePageAfterLoginModel copyWith({
    List<ViewhierarchysectionItemModel>? viewhierarchysectionItemList,
    List<UserprofilesectionItemModel>? userprofilesectionItemList,
  }) {
    return WelcomePageAfterLoginModel(
      viewhierarchysectionItemList:
          viewhierarchysectionItemList ?? this.viewhierarchysectionItemList,
      userprofilesectionItemList:
          userprofilesectionItemList ?? this.userprofilesectionItemList,
    );
  }

  @override
  List<Object?> get props =>
      [viewhierarchysectionItemList, userprofilesectionItemList];
}
