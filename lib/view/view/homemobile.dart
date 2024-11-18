import 'package:campaign_creation_test/utils/appconstants.dart';
import 'package:campaign_creation_test/view/components/sidebarwidget.dart';
import 'package:campaign_creation_test/viewmodel/slidebarviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeMobile extends ConsumerWidget {
  const HomeMobile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = ref.watch(sidebarProvider);
    final formSteps = ref.watch(formStepsProvider);
    return SingleChildScrollView(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0, vertical: 50),
        child: Column(
          children: [
            SizedBox(
                height: MediaQuery.of(context).size.height,
                child: formSteps[currentStep].formWidget!),
            AppConstants.height20,
            SizedBox(
                height: MediaQuery.of(context).size.height * 0.6,
                child: const SidebarWidget()),
          ],
        ),
      ),
    );
  }
}
