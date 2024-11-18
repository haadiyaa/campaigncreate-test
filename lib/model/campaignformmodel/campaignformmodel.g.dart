// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'campaignformmodel.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class CampaignFormModelAdapter extends TypeAdapter<CampaignFormModel> {
  @override
  final int typeId = 0;

  @override
  CampaignFormModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return CampaignFormModel(
      subject: fields[0] as String,
      previewText: fields[1] as String,
      fromName: fields[2] as String,
      fromEmail: fields[3] as String,
      runOnce: fields[4] as bool,
      customAudience: fields[5] as bool,
    );
  }

  @override
  void write(BinaryWriter writer, CampaignFormModel obj) {
    writer
      ..writeByte(6)
      ..writeByte(0)
      ..write(obj.subject)
      ..writeByte(1)
      ..write(obj.previewText)
      ..writeByte(2)
      ..write(obj.fromName)
      ..writeByte(3)
      ..write(obj.fromEmail)
      ..writeByte(4)
      ..write(obj.runOnce)
      ..writeByte(5)
      ..write(obj.customAudience);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is CampaignFormModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}

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
