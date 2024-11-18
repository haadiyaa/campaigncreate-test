import 'package:flutter_riverpod/flutter_riverpod.dart';

class SwitchViewModel extends StateNotifier<bool> {
  SwitchViewModel() : super(false);

  void toggleSwitch(bool value) {
    state = value;
  }
}

final switchProviderFamily = StateNotifierProvider.family<SwitchViewModel, bool, String>(
  (ref, id) => SwitchViewModel(),
);
