import 'package:campaign_creation_test/utils/appcolors.dart';
import 'package:campaign_creation_test/utils/appconstants.dart';
import 'package:campaign_creation_test/utils/apptextstyle.dart';
import 'package:campaign_creation_test/view/components/custombutton.dart';
import 'package:campaign_creation_test/view/components/customoutlinedbutton.dart';
import 'package:campaign_creation_test/view/components/customswitch.dart';
import 'package:campaign_creation_test/view/components/customtextfield.dart';
import 'package:campaign_creation_test/viewmodel/campaignviewmodel.dart';
import 'package:campaign_creation_test/viewmodel/slidebarviewmodel.dart';
import 'package:campaign_creation_test/viewmodel/switchviewmodel.dart';
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
    final currentStep = ref.watch(sidebarProvider);
    final formSteps = ref.watch(formStepsProvider);
    final currentStepDetails = formSteps[currentStep];

    // ref.read(campaignFormProvider.notifier).getAllData();
    final formData = ref.watch(campaignFormProvider);
    subject.text = formData.subject;
    preview.text = formData.previewText;
    name.text = formData.fromName;
    email.text = formData.fromEmail;
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
              validator: (value) {
                final name = RegExp(r'^[A-Za-z\s]+$');
                if (value!.isEmpty) {
                  return 'Subject name can\'t be empty';
                } else if (!name.hasMatch(value)) {
                  return "Enter a valid subject";
                } else if (value.length < 3) {
                  return 'Subject should be atleast 3 characters long';
                } else {
                  return null;
                }
              },
              onChanged: (value) {
                ref
                    .read(campaignFormProvider.notifier)
                    .updateField('subject', value);
              },
            ),
            const Spacer(
              flex: 4,
            ),
            CustomTextField(
              head: 'Preview text',
              text: 'Enter text here...',
              controller: preview,
              maxLines: 3,
              validator: (value) {
                final name = RegExp(r'^[A-Za-z\s]+$');
                if (value!.isEmpty) {
                  return 'preview can\'t be empty';
                } else if (!name.hasMatch(value)) {
                  return "Enter a valid priview";
                } else if (value.length < 7) {
                  return 'Name should be atleast 6 characters long';
                } else {
                  return null;
                }
              },
              onChanged: (value) {
                ref
                    .read(campaignFormProvider.notifier)
                    .updateField('previewText', value);
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
                    validator: (value) {
                      final name = RegExp(r'^[A-Za-z\s]+$');
                      if (value!.isEmpty) {
                        return 'Name can\'t be empty';
                      } else if (!name.hasMatch(value)) {
                        return "Enter a valid name";
                      } else if (value.length < 3) {
                        return 'Name should be atleast 3 characters long';
                      } else {
                        return null;
                      }
                    },
                    onChanged: (value) {
                      ref
                          .read(campaignFormProvider.notifier)
                          .updateField('fromName', value);
                    },
                  ),
                ),
                AppConstants.width20,
                Expanded(
                  child: CustomTextField(
                    head: '"From" Email',
                    text: 'Anne@example.com',
                    controller: email,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Email is required";
                      }
                      final emailReg = RegExp(
                          r"^[a-zA-Z0-9_\-\.\S]{4,}[@][a-z]+[\.][a-z]{2,3}[\s]*$");
                      if (!emailReg.hasMatch(value)) {
                        return 'Invalid email address!';
                      }
                      return null;
                    },
                    onChanged: (value) {
                      ref
                          .read(campaignFormProvider.notifier)
                          .updateField('fromEmail', value);
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
                CustomSwitch(
                  val: formData.runOnce,
                  id: 'runOnce',
                  onChanged: (value) {
                    ref
                        .read(switchProviderFamily('runOnce').notifier)
                        .toggleSwitch(value);
                    ref
                        .read(campaignFormProvider.notifier)
                        .updateField('runOnce', value);
                  },
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
                CustomSwitch(
                  val: formData.customAudience,
                  id: 'customAudience',
                  onChanged: (value) {
                    ref
                        .read(switchProviderFamily('customAudience').notifier)
                        .toggleSwitch(value);
                    ref
                        .read(campaignFormProvider.notifier)
                        .updateField('customAudience', value);
                  },
                ),
              ],
            ),
            const Spacer(
              flex: 4,
            ),
            const Text.rich(
              TextSpan(text: 'You can set up a ', children: [
                TextSpan(
                    text:
                        'custom domain or connect your email service provider ',
                    style: TextStyle(
                        color: const Color.fromARGB(255, 183, 25, 8))),
                TextSpan(text: 'to change this.'),
              ]),
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Expanded(
                  child: SizedBox(
                    height: 50,
                    child: CustomOutLinedButton(
                      label: "Save Draft",
                      onTap: () {
                        if (_key.currentState!.validate()) {
                          final formData = ref.read(campaignFormProvider);
                          ref
                              .read(campaignFormProvider.notifier)
                              .saveDraft(formData)
                              .then(
                            (value) {
                              ScaffoldMessenger.of(context).showSnackBar(
                                const SnackBar(content: Text("Draft saved.")),
                              );
                            },
                          );
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
                AppConstants.width20,
                AppConstants.width10,
                Expanded(
                  flex: 2,
                  child: SizedBox(
                    height: 50,
                    child: CustomButton(
                      label: "Next Step",
                      onTap: () {
                        if (_key.currentState!.validate()) {
                          final formData = ref.read(campaignFormProvider);
                          final steps = ref.watch(formStepsProvider);

                          print(formData.toJson());
                          if (currentStep != steps.length - 1) {
                            ref
                                .read(sidebarProvider.notifier)
                                .navigateToStep(currentStep + 1);
                          }

                          ref.read(campaignFormProvider.notifier).resetForm();
                          // _key.currentState!.reset();
                          // subject.clear();
                          // preview.clear();
                          // name.clear();
                          // email.clear();
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
