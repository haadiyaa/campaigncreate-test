import 'package:campaign_creation_test/model/campaignformmodel/campaignformmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

class CampaignFormViewModel extends StateNotifier<CampaignFormModel> {
  CampaignFormViewModel()
      : super(
          const CampaignFormModel(
            subject: '',
            previewText: '',
            fromName: '',
            fromEmail: '',
            runOnce: false,
            customAudience: false,
          ),
        ) {
    getAllData();
  }
  CampaignFormModel? getAllData() {
    Box<CampaignFormModel> box = Hive.box<CampaignFormModel>('hivebox');
    if (box.isNotEmpty) {
      state = box.values.toList()[0];
    }
    return state;
  }

  void resetForm() {
    state = const CampaignFormModel(
      subject: '',
      previewText: '',
      fromName: '',
      fromEmail: '',
      runOnce: false,
      customAudience: false,
    );
  }

  Future<void> saveDraft(CampaignFormModel model) async {
    Box<CampaignFormModel> box = Hive.box<CampaignFormModel>('hivebox');
    await box.clear();
    await box.add(model);
    getAllData();
    print("Draft saved: $state");
  }

  // Future<void> cleare() async {
  //   Box<CampaignFormModel> box = Hive.box<CampaignFormModel>('hivebox');
  //   await box.clear();
  // }

  void updateField(String field, dynamic value) {
    state = CampaignFormModel(
      subject: field == 'subject' ? value : state.subject,
      previewText: field == 'previewText' ? value : state.previewText,
      fromName: field == 'fromName' ? value : state.fromName,
      fromEmail: field == 'fromEmail' ? value : state.fromEmail,
      runOnce: field == 'runOnce' ? value : state.runOnce,
      customAudience: field == 'customAudience' ? value : state.customAudience,
    );
  }
}

final campaignFormProvider =
    StateNotifierProvider<CampaignFormViewModel, CampaignFormModel>(
  (ref) => CampaignFormViewModel(),
);
