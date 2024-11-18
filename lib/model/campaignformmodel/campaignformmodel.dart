import 'package:freezed_annotation/freezed_annotation.dart';

part 'campaignformmodel.freezed.dart';
part 'campaignformmodel.g.dart';

@freezed
class CampaignFormModel with _$CampaignFormModel {
  const factory CampaignFormModel({
    required String subject,
    required String previewText,
    required String fromName,
    required String fromEmail,
    required bool runOnce,
    required bool customAudience,
  }) = _CampaignFormModel;

  factory CampaignFormModel.fromJson(Map<String, dynamic> json) =>
      _$CampaignFormModelFromJson(json);
}
