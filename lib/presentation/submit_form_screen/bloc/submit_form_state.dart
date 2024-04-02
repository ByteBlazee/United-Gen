// ignore_for_file: must_be_immutable

part of 'submit_form_bloc.dart';

/// Represents the state of SubmitForm in the application.
class SubmitFormState extends Equatable {
  SubmitFormState({
    this.radioGroup = "",
    this.submitFormModelObj,
  });

  SubmitFormModel? submitFormModelObj;

  String radioGroup;

  @override
  List<Object?> get props => [
        radioGroup,
        submitFormModelObj,
      ];
  SubmitFormState copyWith({
    String? radioGroup,
    SubmitFormModel? submitFormModelObj,
  }) {
    return SubmitFormState(
      radioGroup: radioGroup ?? this.radioGroup,
      submitFormModelObj: submitFormModelObj ?? this.submitFormModelObj,
    );
  }
}
