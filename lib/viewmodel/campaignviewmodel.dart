import 'package:campaign_creation_test/model/campaignformmodel/campaignformmodel.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        );

  void saveDraft() {
    print("Draft saved: $state");
  }

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
