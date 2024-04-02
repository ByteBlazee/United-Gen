import '../playlists_page/widgets/userprofile_item_widget.dart';
import 'bloc/playlists_bloc.dart';
import 'models/playlists_model.dart';
import 'models/userprofile_item_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class PlaylistsPage extends StatefulWidget {
  const PlaylistsPage({Key? key})
      : super(
          key: key,
        );

  @override
  PlaylistsPageState createState() => PlaylistsPageState();
  static Widget builder(BuildContext context) {
    return BlocProvider<PlaylistsBloc>(
      create: (context) => PlaylistsBloc(PlaylistsState(
        playlistsModelObj: PlaylistsModel(),
      ))
        ..add(PlaylistsInitialEvent()),
      child: PlaylistsPage(),
    );
  }
}

class PlaylistsPageState extends State<PlaylistsPage>
    with AutomaticKeepAliveClientMixin<PlaylistsPage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);

    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        body: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 22.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 42.h,
                  right: 39.h,
                ),
                child: BlocSelector<PlaylistsBloc, PlaylistsState,
                    PlaylistsModel?>(
                  selector: (state) => state.playlistsModelObj,
                  builder: (context, playlistsModelObj) {
                    return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (
                        context,
                        index,
                      ) {
                        return SizedBox(
                          height: 20.v,
                        );
                      },
                      itemCount:
                          playlistsModelObj?.userprofileItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        UserprofileItemModel model =
                            playlistsModelObj?.userprofileItemList[index] ??
                                UserprofileItemModel();
                        return UserprofileItemWidget(
                          model,
                        );
                      },
                    );
                  },
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
