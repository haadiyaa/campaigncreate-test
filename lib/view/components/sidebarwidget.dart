import 'package:campaign_creation_test/utils/appcolors.dart';
import 'package:campaign_creation_test/utils/appconstants.dart';
import 'package:campaign_creation_test/utils/apptextstyle.dart';
import 'package:campaign_creation_test/view/components/customoutlinedbutton.dart';
import 'package:campaign_creation_test/viewmodel/slidebarviewmodel.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SidebarWidget extends ConsumerWidget {
  const SidebarWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final currentStep = ref.watch(sidebarProvider);
    final steps = ref.watch(formStepsProvider);

    return Container(
      decoration: BoxDecoration(
          color: AppColors.white, borderRadius: BorderRadius.circular(10)),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          for (int i = 0; i < steps.length; i++)
            GestureDetector(
              onTap: () => ref.read(sidebarProvider.notifier).navigateToStep(i),
              child: Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(18),
                    decoration: BoxDecoration(
                      color:
                          i == currentStep ? AppColors.orange : AppColors.white,
                      shape: BoxShape.circle,
                      border: Border.all(
                        color: i == currentStep
                            ? AppColors.orange
                            : AppColors.grey,
                      ),
                    ),
                    child: Text(
                      '${i + 1}',
                      style: Apptextstyle.slideBarNumber.copyWith(
                        color:
                            i == currentStep ? AppColors.white : AppColors.grey,
                      ),
                    ),
                  ),
                  AppConstants.width10,
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(steps[i].title,
                            style: i == currentStep
                                ? Apptextstyle.slideBarTitle
                                : Apptextstyle.slideBarTitle
                                    .copyWith(color: AppColors.grey)),
                        Text(
                          steps[i].label,
                          style: i == currentStep
                              ? Apptextstyle.slideBarSubTitle
                                  .copyWith(color: AppColors.grey)
                              : Apptextstyle.slideBarSubTitle
                                  .copyWith(color: AppColors.greyLight),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          const Spacer(),
          Text(
            'Need Help?',
            style: Apptextstyle.slideBarTitle
                .copyWith(color: AppColors.grey, fontSize: 16),
          ),
          AppConstants.height5,
          Text(
            'Get to know how your campaign\ncan reach a wider audience.',
            style: Apptextstyle.slideBarSubTitle
                .copyWith(color: AppColors.greyLight),
          ),
          AppConstants.height10,
          CustomOutLinedButton(
            label: 'Contact Us',
            onTap: () {},
            foregroundColor: AppColors.grey,
          ),
        ],
      ),
    );
  }
}
