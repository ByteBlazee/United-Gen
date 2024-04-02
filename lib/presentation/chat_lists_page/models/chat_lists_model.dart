// ignore_for_file: must_be_immutable

import 'package:equatable/equatable.dart';
import '../../../core/app_export.dart';
import 'chatlists_item_model.dart';

/// This class defines the variables used in the [chat_lists_page],
/// and is typically used to hold data that is passed between different parts of the application.
class ChatListsModel extends Equatable {
  ChatListsModel({this.chatlistsItemList = const []}) {}

  List<ChatlistsItemModel> chatlistsItemList;

  ChatListsModel copyWith({List<ChatlistsItemModel>? chatlistsItemList}) {
    return ChatListsModel(
      chatlistsItemList: chatlistsItemList ?? this.chatlistsItemList,
    );
  }

  @override
  List<Object?> get props => [chatlistsItemList];
}
