// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaignformmodel.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$CampaignFormModelImpl _$$CampaignFormModelImplFromJson(
        Map<String, dynamic> json) =>
    _$CampaignFormModelImpl(
      subject: json['subject'] as String,
      previewText: json['previewText'] as String,
      fromName: json['fromName'] as String,
      fromEmail: json['fromEmail'] as String,
      runOnce: json['runOnce'] as bool,
      customAudience: json['customAudience'] as bool,
    );

Map<String, dynamic> _$$CampaignFormModelImplToJson(
        _$CampaignFormModelImpl instance) =>
    <String, dynamic>{
      'subject': instance.subject,
      'previewText': instance.previewText,
      'fromName': instance.fromName,
      'fromEmail': instance.fromEmail,
      'runOnce': instance.runOnce,
      'customAudience': instance.customAudience,
    };
