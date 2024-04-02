// ignore_for_file: must_be_immutable

part of 'overview_tab_container_bloc.dart';

/// Represents the state of OverviewTabContainer in the application.
class OverviewTabContainerState extends Equatable {
  OverviewTabContainerState({this.overviewTabContainerModelObj});

  OverviewTabContainerModel? overviewTabContainerModelObj;

  @override
  List<Object?> get props => [
        overviewTabContainerModelObj,
      ];
  OverviewTabContainerState copyWith(
      {OverviewTabContainerModel? overviewTabContainerModelObj}) {
    return OverviewTabContainerState(
      overviewTabContainerModelObj:
          overviewTabContainerModelObj ?? this.overviewTabContainerModelObj,
    );
  }
}
