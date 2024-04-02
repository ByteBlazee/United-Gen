// ignore_for_file: must_be_immutable

part of 'test_paper_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TestPaper widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TestPaperEvent extends Equatable {}

/// Event that is dispatched when the TestPaper widget is first created.
class TestPaperInitialEvent extends TestPaperEvent {
  @override
  List<Object?> get props => [];
}
