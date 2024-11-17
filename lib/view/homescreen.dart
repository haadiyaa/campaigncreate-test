import 'package:campaign_creation_test/utils/appconstants.dart';
import 'package:campaign_creation_test/view/components/sidebarwidget.dart';
import 'package:campaign_creation_test/viewmodel/slidebarviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeScreen extends ConsumerWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = ref.watch(sidebarProvider);
    final formSteps = ref.watch(formStepsProvider);
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 229, 229),
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 90),
        child: Row(
          children: [
            const Spacer(
              flex: 3,
            ),
            Expanded(
              flex: 7,
              child: formSteps[currentStep].formWidget!,
            ),
            AppConstants.width20,
            AppConstants.width20,
            const Expanded(
              flex: 4,
              child: SidebarWidget(),
            ),
            const Spacer(
              flex: 3,
            )
          ],
        ),
      ),
    );
  }
}
