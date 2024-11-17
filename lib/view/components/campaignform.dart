import 'package:campaign_creation_test/utils/appcolors.dart';
import 'package:campaign_creation_test/utils/appconstants.dart';
import 'package:campaign_creation_test/utils/apptextstyle.dart';
import 'package:campaign_creation_test/view/components/custombutton.dart';
import 'package:campaign_creation_test/view/components/customoutlinedbutton.dart';
import 'package:campaign_creation_test/view/components/customtextfield.dart';
import 'package:campaign_creation_test/viewmodel/formviewmodel.dart';
import 'package:campaign_creation_test/viewmodel/slidebarviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CampaignForm extends ConsumerWidget {
  CampaignForm({super.key});

  final TextEditingController subject = TextEditingController();
  final TextEditingController preview = TextEditingController();
  final TextEditingController name = TextEditingController();
  final TextEditingController email = TextEditingController();
  final GlobalKey<FormState> _key = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final formState = ref.watch(formProvider);
    final currentStep = ref.watch(sidebarProvider);
    final formSteps = ref.watch(formStepsProvider);
    final currentStepDetails = formSteps[currentStep];

    return Container(
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.symmetric(vertical: 35.0, horizontal: 30),
      child: Form(
        key: _key,
        child: Column(
          children: [
            Text(
              currentStepDetails.title,
              style: Apptextstyle.formTitle,
            ),
            AppConstants.height5,
            Text(
              currentStepDetails.label,
              style: Apptextstyle.slideBarSubTitle,
            ),
            const Spacer(
              flex: 5,
            ),
            CustomTextField(
              head: 'Campaign Subject',
              text: 'Enter Subject',
              controller: subject,
              validator: (p0) {
                if (p0 == null || p0.isEmpty) {
                  return 'Enter something';
                }
              },
            ),
            const Spacer(
              flex: 4,
            ),
            CustomTextField(
              head: 'Preview text',
              text: 'Enter text here...',
              controller: preview,
              validator: (p0) {
                if (p0 == null || p0.isEmpty) {
                  return 'Enter something';
                }
              },
            ),
            const Spacer(),
            const Row(
              children: [
                Text('Keep this simple of 50 character'),
              ],
            ),
            const Spacer(
              flex: 4,
            ),
            Row(
              children: [
                Expanded(
                  child: CustomTextField(
                    head: '"From" Name',
                    text: 'From Anne',
                    controller: name,
                    validator: (p0) {
                      if (p0 == null || p0.isEmpty) {
                        return 'Enter something';
                      }
                    },
                  ),
                ),
                AppConstants.width20,
                Expanded(
                  child: CustomTextField(
                    head: '"From" Email',
                    text: 'Anne@example.com',
                    controller: subject,
                    validator: (p0) {
                      if (p0 == null || p0.isEmpty) {
                        return 'Enter something';
                      }
                    },
                  ),
                ),
              ],
            ),
            const Spacer(
              flex: 2,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const Spacer(
              flex: 3,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Run only once per customer',
                  style: Apptextstyle.textfieldHead,
                ),
                Switch(
                  value: true,
                  onChanged: (value) {},
                ),
              ],
            ),
            const Spacer(
              flex: 4,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Text(
                  'Custom audience',
                  style: Apptextstyle.textfieldHead,
                ),
                Switch(
                  value: false,
                  onChanged: (value) {},
                ),
              ],
            ),
            const Spacer(
              flex: 4,
            ),
            const Row(
              children: [
                Text(
                    'You can set up a custom domain or connect your email service provider to change this.'),
              ],
            ),
            const Spacer(
              flex: 4,
            ),
            const Divider(
              thickness: 0.5,
            ),
            const Spacer(
              flex: 2,
            ),
            // TextField(
            //   decoration: const InputDecoration(labelText: "Campaign Subject"),
            //   onChanged: (value) =>
            //       ref.read(formProvider.notifier).updateField('subject', value),
            // ),
            // AppConstants.height10,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: CustomOutLinedButton(
                      label: "Save Draft",
                      onTap: () => ref.read(formProvider.notifier).saveDraft(),
                    ),
                  ),
                ),
                AppConstants.width20,
                AppConstants.width10,
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: 50,
                    child: CustomButton(
                      label: "Next Step",
                      onTap: () {
                        // if (ref.read(formProvider.notifier).validateForm()) {
                        //   ref
                        //       .read(sidebarProvider.notifier)
                        //       .navigateToStep(currentStep + 1);
                        // }
                        if (_key.currentState!.validate()) {
                          ref
                              .read(sidebarProvider.notifier)
                              .navigateToStep(currentStep + 1);
                        } else {
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                                content: Text(
                                    "Please complete the required fields.")),
                          );
                        }
                      },
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
