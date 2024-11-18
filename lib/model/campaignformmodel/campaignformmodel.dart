import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:hive_flutter/hive_flutter.dart';

part 'campaignformmodel.freezed.dart';
part 'campaignformmodel.g.dart';

@freezed
@HiveType(typeId: 0)
class CampaignFormModel with _$CampaignFormModel {
  const factory CampaignFormModel({
    @HiveField(0)
    required String subject,
    @HiveField(1)
    required String previewText,
    @HiveField(2)
    required String fromName,
    @HiveField(3)
    required String fromEmail,
    @HiveField(4)
    required bool runOnce,
    @HiveField(5)
    required bool customAudience,
  }) = _CampaignFormModel;

  factory CampaignFormModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignFormModelFromJson(json);
}
