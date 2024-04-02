// ignore_for_file: must_be_immutable

part of 'overview_bloc.dart';

/// Represents the state of Overview in the application.
class OverviewState extends Equatable {
  OverviewState({this.overviewModelObj});

  OverviewModel? overviewModelObj;

  @override
  List<Object?> get props => [
        overviewModelObj,
      ];
  OverviewState copyWith({OverviewModel? overviewModelObj}) {
    return OverviewState(
      overviewModelObj: overviewModelObj ?? this.overviewModelObj,
    );
  }
}
