import 'package:flutter_riverpod/flutter_riverpod.dart';

class FormViewModel extends StateNotifier<Map<String, dynamic>> {
  FormViewModel() : super({});

  void updateField(String key, dynamic value) {
    state = {...state, key: value};
  }

  bool validateForm() {
    return state['subject']?.isNotEmpty ?? false;
  }

  void saveDraft() {
    print("Draft saved: $state");
  }
}

final formProvider = StateNotifierProvider<FormViewModel, Map<String, dynamic>>(
  (ref) => FormViewModel(),
);
