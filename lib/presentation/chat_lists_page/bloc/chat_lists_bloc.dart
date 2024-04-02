import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/chatlists_item_model.dart';
import 'package:ayush_s_application13/presentation/chat_lists_page/models/chat_lists_model.dart';
part 'chat_lists_event.dart';
part 'chat_lists_state.dart';

/// A bloc that manages the state of a ChatLists according to the event that is dispatched to it.
class ChatListsBloc extends Bloc<ChatListsEvent, ChatListsState> {
  ChatListsBloc(ChatListsState initialState) : super(initialState) {
    on<ChatListsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    ChatListsInitialEvent event,
    Emitter<ChatListsState> emit,
  ) async {
    emit(state.copyWith(
        chatListsModelObj: state.chatListsModelObj
            ?.copyWith(chatlistsItemList: fillChatlistsItemList())));
  }

  List<ChatlistsItemModel> fillChatlistsItemList() {
    return [ChatlistsItemModel(group: ImageConstant.imgGroup42)];
  }
}
