import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'formstepsmodel.freezed.dart';
part 'formstepsmodel.g.dart';

@freezed
class FormStepsModel with _$FormStepsModel {
  factory FormStepsModel({
    required String title,
    required String label,
    required bool completed,
    @JsonKey(includeFromJson: false, includeToJson: false) Widget? formWidget,
  }) = _FormStepsModel;

  factory FormStepsModel.fromJson(Map<String, dynamic> json) =>
      _$FormStepsModelFromJson(json);
}
