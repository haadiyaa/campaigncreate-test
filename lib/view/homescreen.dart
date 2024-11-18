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
        child: LayoutBuilder(
          builder: (context, constraints) {
            if (constraints.maxWidth < 770) {
              //mobile
              return Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: Column(
                  children: [
                    formSteps[currentStep].formWidget!,
                    AppConstants.height20,
                    const SidebarWidget(),
                  ],
                ),
              );
            }
            if (constraints.maxWidth < 1200) {
              //tablet
              return Row(
                children: [
                  const Spacer(),
                  Expanded(flex: 6, child: formSteps[currentStep].formWidget!),
                  AppConstants.width20,
                  const Expanded(flex: 4, child: SidebarWidget()),
                  const Spacer(),
                ],
              );
            } else {
              //desktop
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Spacer(flex: 3),
                  Expanded(flex: 7, child: formSteps[currentStep].formWidget!),
                  AppConstants.width20,
                  const Expanded(flex: 4, child: SidebarWidget()),
                  const Spacer(flex: 3),
                ],
              );
            }
          },
        ),
      ),
    );
  }
}
