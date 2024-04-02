// ignore_for_file: must_be_immutable

part of 'chat_lists_bloc.dart';

/// Represents the state of ChatLists in the application.
class ChatListsState extends Equatable {
  ChatListsState({this.chatListsModelObj});

  ChatListsModel? chatListsModelObj;

  @override
  List<Object?> get props => [
        chatListsModelObj,
      ];
  ChatListsState copyWith({ChatListsModel? chatListsModelObj}) {
    return ChatListsState(
      chatListsModelObj: chatListsModelObj ?? this.chatListsModelObj,
    );
  }
}
