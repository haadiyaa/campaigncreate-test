import 'package:campaign_creation_test/utils/appcolors.dart';
import 'package:campaign_creation_test/viewmodel/switchviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CustomSwitch extends ConsumerWidget {
  const CustomSwitch({super.key, required this.id, this.onChanged,this.val});

  final String id;
  final bool? val;
  final void Function(bool)? onChanged;
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isSwitchOn = ref.watch(switchProviderFamily(id));
    return Switch(
        trackOutlineColor: MaterialStateProperty.resolveWith<Color?>((states) {
          return Colors.transparent;
        }),
        activeTrackColor: AppColors.orange,
        activeColor: AppColors.white,
        inactiveThumbColor: AppColors.grey,
        inactiveTrackColor: const Color.fromARGB(255, 211, 211, 211),
        value:val?? isSwitchOn,
        onChanged: onChanged,
        );
  }
}
