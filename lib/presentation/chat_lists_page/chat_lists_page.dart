import '../chat_lists_page/widgets/chatlists_item_widget.dart';
import 'bloc/chat_lists_bloc.dart';
import 'models/chat_lists_model.dart';
import 'models/chatlists_item_model.dart';
import 'package:ayush_s_application13/core/app_export.dart';
import 'package:ayush_s_application13/widgets/custom_icon_button.dart';
import 'package:flutter/material.dart';

class ChatListsPage extends StatelessWidget {
  const ChatListsPage({Key? key}) : super(key: key);

  static Widget builder(BuildContext context) {
    return BlocProvider<ChatListsBloc>(
        create: (context) =>
            ChatListsBloc(ChatListsState(chatListsModelObj: ChatListsModel()))
              ..add(ChatListsInitialEvent()),
        child: ChatListsPage());
  }

  @override
  Widget build(BuildContext context) {
    mediaQueryData = MediaQuery.of(context);
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                decoration: AppDecoration.fillOnPrimary,
                child: Container(
                    padding:
                        EdgeInsets.only(left: 13.h, top: 61.v, right: 13.h),
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(children: [
                            Padding(
                                padding: EdgeInsets.only(top: 7.v, bottom: 6.v),
                                child: CustomIconButton(
                                    height: 24.adaptSize,
                                    width: 24.adaptSize,
                                    padding: EdgeInsets.all(7.h),
                                    onTap: () {
                                      onTapBtnIconButton(context);
                                    },
                                    child: CustomImageView(
                                        imagePath: ImageConstant.imgGroup24))),
                            Padding(
                                padding: EdgeInsets.only(left: 15.h),
                                child: Text("lbl_chat_lists".tr,
                                    style: theme.textTheme.headlineSmall))
                          ]),
                          SizedBox(height: 61.v),
                          _buildChatLists(context)
                        ])))));
  }

  /// Section Widget
  Widget _buildChatLists(BuildContext context) {
    return Align(
        alignment: Alignment.center,
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 13.h),
            child: BlocSelector<ChatListsBloc, ChatListsState, ChatListsModel?>(
                selector: (state) => state.chatListsModelObj,
                builder: (context, chatListsModelObj) {
                  return ListView.separated(
                      physics: NeverScrollableScrollPhysics(),
                      shrinkWrap: true,
                      separatorBuilder: (context, index) {
                        return Padding(
                            padding: EdgeInsets.symmetric(vertical: 0.5.v),
                            child: SizedBox(
                                width: 378.h,
                                child: Divider(
                                    height: 1.v,
                                    thickness: 1.v,
                                    color: appTheme.black900)));
                      },
                      itemCount:
                          chatListsModelObj?.chatlistsItemList.length ?? 0,
                      itemBuilder: (context, index) {
                        ChatlistsItemModel model =
                            chatListsModelObj?.chatlistsItemList[index] ??
                                ChatlistsItemModel();
                        return ChatlistsItemWidget(model);
                      });
                })));
  }

  /// Navigates to the welcomePageAfterLoginScreen when the action is triggered.
  onTapBtnIconButton(BuildContext context) {
    NavigatorService.pushNamed(
      AppRoutes.welcomePageAfterLoginScreen,
    );
  }
}
