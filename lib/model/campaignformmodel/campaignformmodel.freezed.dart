// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'campaignformmodel.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

CampaignFormModel _$CampaignFormModelFromJson(Map<String, dynamic> json) {
  return _CampaignFormModel.fromJson(json);
}

/// @nodoc
mixin _$CampaignFormModel {
  @HiveField(0)
  String get subject => throw _privateConstructorUsedError;
  @HiveField(1)
  String get previewText => throw _privateConstructorUsedError;
  @HiveField(2)
  String get fromName => throw _privateConstructorUsedError;
  @HiveField(3)
  String get fromEmail => throw _privateConstructorUsedError;
  @HiveField(4)
  bool get runOnce => throw _privateConstructorUsedError;
  @HiveField(5)
  bool get customAudience => throw _privateConstructorUsedError;

  /// Serializes this CampaignFormModel to a JSON map.
  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;

  /// Create a copy of CampaignFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $CampaignFormModelCopyWith<CampaignFormModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $CampaignFormModelCopyWith<$Res> {
  factory $CampaignFormModelCopyWith(
          CampaignFormModel value, $Res Function(CampaignFormModel) then) =
      _$CampaignFormModelCopyWithImpl<$Res, CampaignFormModel>;
  @useResult
  $Res call(
      {@HiveField(0) String subject,
      @HiveField(1) String previewText,
      @HiveField(2) String fromName,
      @HiveField(3) String fromEmail,
      @HiveField(4) bool runOnce,
      @HiveField(5) bool customAudience});
}

/// @nodoc
class _$CampaignFormModelCopyWithImpl<$Res, $Val extends CampaignFormModel>
    implements $CampaignFormModelCopyWith<$Res> {
  _$CampaignFormModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of CampaignFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? previewText = null,
    Object? fromName = null,
    Object? fromEmail = null,
    Object? runOnce = null,
    Object? customAudience = null,
  }) {
    return _then(_value.copyWith(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      previewText: null == previewText
          ? _value.previewText
          : previewText // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: null == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      fromEmail: null == fromEmail
          ? _value.fromEmail
          : fromEmail // ignore: cast_nullable_to_non_nullable
              as String,
      runOnce: null == runOnce
          ? _value.runOnce
          : runOnce // ignore: cast_nullable_to_non_nullable
              as bool,
      customAudience: null == customAudience
          ? _value.customAudience
          : customAudience // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$CampaignFormModelImplCopyWith<$Res>
    implements $CampaignFormModelCopyWith<$Res> {
  factory _$$CampaignFormModelImplCopyWith(_$CampaignFormModelImpl value,
          $Res Function(_$CampaignFormModelImpl) then) =
      __$$CampaignFormModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {@HiveField(0) String subject,
      @HiveField(1) String previewText,
      @HiveField(2) String fromName,
      @HiveField(3) String fromEmail,
      @HiveField(4) bool runOnce,
      @HiveField(5) bool customAudience});
}

/// @nodoc
class __$$CampaignFormModelImplCopyWithImpl<$Res>
    extends _$CampaignFormModelCopyWithImpl<$Res, _$CampaignFormModelImpl>
    implements _$$CampaignFormModelImplCopyWith<$Res> {
  __$$CampaignFormModelImplCopyWithImpl(_$CampaignFormModelImpl _value,
      $Res Function(_$CampaignFormModelImpl) _then)
      : super(_value, _then);

  /// Create a copy of CampaignFormModel
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? subject = null,
    Object? previewText = null,
    Object? fromName = null,
    Object? fromEmail = null,
    Object? runOnce = null,
    Object? customAudience = null,
  }) {
    return _then(_$CampaignFormModelImpl(
      subject: null == subject
          ? _value.subject
          : subject // ignore: cast_nullable_to_non_nullable
              as String,
      previewText: null == previewText
          ? _value.previewText
          : previewText // ignore: cast_nullable_to_non_nullable
              as String,
      fromName: null == fromName
          ? _value.fromName
          : fromName // ignore: cast_nullable_to_non_nullable
              as String,
      fromEmail: null == fromEmail
          ? _value.fromEmail
          : fromEmail // ignore: cast_nullable_to_non_nullable
              as String,
      runOnce: null == runOnce
          ? _value.runOnce
          : runOnce // ignore: cast_nullable_to_non_nullable
              as bool,
      customAudience: null == customAudience
          ? _value.customAudience
          : customAudience // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$CampaignFormModelImpl implements _CampaignFormModel {
  const _$CampaignFormModelImpl(
      {@HiveField(0) required this.subject,
      @HiveField(1) required this.previewText,
      @HiveField(2) required this.fromName,
      @HiveField(3) required this.fromEmail,
      @HiveField(4) required this.runOnce,
      @HiveField(5) required this.customAudience});

  factory _$CampaignFormModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$CampaignFormModelImplFromJson(json);

  @override
  @HiveField(0)
  final String subject;
  @override
  @HiveField(1)
  final String previewText;
  @override
  @HiveField(2)
  final String fromName;
  @override
  @HiveField(3)
  final String fromEmail;
  @override
  @HiveField(4)
  final bool runOnce;
  @override
  @HiveField(5)
  final bool customAudience;

  @override
  String toString() {
    return 'CampaignFormModel(subject: $subject, previewText: $previewText, fromName: $fromName, fromEmail: $fromEmail, runOnce: $runOnce, customAudience: $customAudience)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$CampaignFormModelImpl &&
            (identical(other.subject, subject) || other.subject == subject) &&
            (identical(other.previewText, previewText) ||
                other.previewText == previewText) &&
            (identical(other.fromName, fromName) ||
                other.fromName == fromName) &&
            (identical(other.fromEmail, fromEmail) ||
                other.fromEmail == fromEmail) &&
            (identical(other.runOnce, runOnce) || other.runOnce == runOnce) &&
            (identical(other.customAudience, customAudience) ||
                other.customAudience == customAudience));
  }

  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  int get hashCode => Object.hash(runtimeType, subject, previewText, fromName,
      fromEmail, runOnce, customAudience);

  /// Create a copy of CampaignFormModel
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$CampaignFormModelImplCopyWith<_$CampaignFormModelImpl> get copyWith =>
      __$$CampaignFormModelImplCopyWithImpl<_$CampaignFormModelImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$CampaignFormModelImplToJson(
      this,
    );
  }
}

abstract class _CampaignFormModel implements CampaignFormModel {
  const factory _CampaignFormModel(
          {@HiveField(0) required final String subject,
          @HiveField(1) required final String previewText,
          @HiveField(2) required final String fromName,
          @HiveField(3) required final String fromEmail,
          @HiveField(4) required final bool runOnce,
          @HiveField(5) required final bool customAudience}) =
      _$CampaignFormModelImpl;

  factory _CampaignFormModel.fromJson(Map<String, dynamic> json) =
      _$CampaignFormModelImpl.fromJson;

  @override
  @HiveField(0)
  String get subject;
  @override
  @HiveField(1)
  String get previewText;
  @override
  @HiveField(2)
  String get fromName;
  @override
  @HiveField(3)
  String get fromEmail;
  @override
  @HiveField(4)
  bool get runOnce;
  @override
  @HiveField(5)
  bool get customAudience;

  /// Create a copy of CampaignFormModel
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$CampaignFormModelImplCopyWith<_$CampaignFormModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
