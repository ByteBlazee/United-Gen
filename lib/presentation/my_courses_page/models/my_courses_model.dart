// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'dynamicviewlist_item_model.dart';

/// This class defines the variables used in the [my_courses_page],
/// and is typically used to hold data that is passed between different parts of the application.
class MyCoursesModel extends Equatable {
  MyCoursesModel({this.dynamicviewlistItemList = const []}) {}

  List<DynamicviewlistItemModel> dynamicviewlistItemList;

  MyCoursesModel copyWith(
      {List<DynamicviewlistItemModel>? dynamicviewlistItemList}) {
    return MyCoursesModel(
      dynamicviewlistItemList:
          dynamicviewlistItemList ?? this.dynamicviewlistItemList,
    );
  }

  @override
  List<Object?> get props => [dynamicviewlistItemList];
}
