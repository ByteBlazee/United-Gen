// ignore_for_file: must_be_immutable

part of 'test_declaration_bloc.dart';

/// Represents the state of TestDeclaration in the application.
class TestDeclarationState extends Equatable {
  TestDeclarationState({this.testDeclarationModelObj});

  TestDeclarationModel? testDeclarationModelObj;

  @override
  List<Object?> get props => [
        testDeclarationModelObj,
      ];
  TestDeclarationState copyWith(
      {TestDeclarationModel? testDeclarationModelObj}) {
    return TestDeclarationState(
      testDeclarationModelObj:
          testDeclarationModelObj ?? this.testDeclarationModelObj,
    );
  }
}
