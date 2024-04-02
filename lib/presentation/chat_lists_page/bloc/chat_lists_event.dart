// ignore_for_file: must_be_immutable

part of 'chat_lists_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///ChatLists widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class ChatListsEvent extends Equatable {}

/// Event that is dispatched when the ChatLists widget is first created.
class ChatListsInitialEvent extends ChatListsEvent {
  @override
  List<Object?> get props => [];
}
