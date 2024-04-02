// ignore_for_file: must_be_immutable

part of 'test_report_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TestReport widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TestReportEvent extends Equatable {}

/// Event that is dispatched when the TestReport widget is first created.
class TestReportInitialEvent extends TestReportEvent {
  @override
  List<Object?> get props => [];
}
