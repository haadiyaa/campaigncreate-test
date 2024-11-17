// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'formstepsmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$FormStepsModelImpl _$$FormStepsModelImplFromJson(Map<String, dynamic> json) =>
    _$FormStepsModelImpl(
      title: json['title'] as String,
      label: json['label'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$FormStepsModelImplToJson(
        _$FormStepsModelImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'label': instance.label,
      'completed': instance.completed,
    };
