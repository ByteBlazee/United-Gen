import 'package:equatable/equatable.dart';
import 'package:flutter/material.dart';
import '/core/app_export.dart';
import '../models/userprofile_item_model.dart';
import 'package:ayush_s_application13/presentation/playlists_page/models/playlists_model.dart';
part 'playlists_event.dart';
part 'playlists_state.dart';

/// A bloc that manages the state of a Playlists according to the event that is dispatched to it.
class PlaylistsBloc extends Bloc<PlaylistsEvent, PlaylistsState> {
  PlaylistsBloc(PlaylistsState initialState) : super(initialState) {
    on<PlaylistsInitialEvent>(_onInitialize);
  }

  _onInitialize(
    PlaylistsInitialEvent event,
    Emitter<PlaylistsState> emit,
  ) async {
    emit(state.copyWith(
        playlistsModelObj: state.playlistsModelObj?.copyWith(
      userprofileItemList: fillUserprofileItemList(),
    )));
  }

  List<UserprofileItemModel> fillUserprofileItemList() {
    return [
      UserprofileItemModel(
          dynamicText: "1",
          dynamicText1: "Algebraic Basic",
          dynamicText2: "0:00/20:00",
          dynamicImage: ImageConstant.imgPlay),
      UserprofileItemModel(
          dynamicText: "2", dynamicText1: "BODMAS", dynamicText2: "0:00/20:00"),
      UserprofileItemModel(
          dynamicText: "3",
          dynamicText1: "Multiplication",
          dynamicText2: "0:00/20:00"),
      UserprofileItemModel(
          dynamicText: "4",
          dynamicText1: "Substitution",
          dynamicText2: "0:00/20:00"),
      UserprofileItemModel(
          dynamicText: "5",
          dynamicText1: "Solving Inequalities",
          dynamicText2: "0:00/20:00")
    ];
  }
}
