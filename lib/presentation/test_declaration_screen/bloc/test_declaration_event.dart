// ignore_for_file: must_be_immutable

part of 'test_declaration_bloc.dart';

/// Abstract class for all events that can be dispatched from the
///TestDeclaration widget.
///
/// Events must be immutable and implement the [Equatable] interface.
@immutable
abstract class TestDeclarationEvent extends Equatable {}

/// Event that is dispatched when the TestDeclaration widget is first created.
class TestDeclarationInitialEvent extends TestDeclarationEvent {
  @override
  List<Object?> get props => [];
}
