import 'package:campaign_creation_test/model/formstepsmodel.dart';
import 'package:campaign_creation_test/view/components/campaignform.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SidebarViewModel extends StateNotifier<int> {
  SidebarViewModel() : super(0);

  void navigateToStep(int step) {
    state = step;
  }
}

final sidebarProvider = StateNotifierProvider<SidebarViewModel, int>(
  (ref) => SidebarViewModel(),
);

final formStepsProvider = Provider<List<FormStepsModel>>((ref) => [
      FormStepsModel(
          title: "Create New Campaign",
          label: "Fill out these details and get your campaign ready.",
          completed: false,
          formWidget: CampaignForm()),
      FormStepsModel(
          title: "Create Segments",
          label: "Get full control over your audience.",
          completed: false,
          formWidget: CampaignForm()),
      FormStepsModel(
          title: "Bidding Strategy",
          label: "Optimize your campaign reach.",
          completed: false,
          formWidget: CampaignForm()),
      FormStepsModel(
          title: "Site Links",
          label: "Set up your customer journey flow.",
          completed: false,
          formWidget: CampaignForm()),
      FormStepsModel(
          title: "Review Campaign",
          label: "Double-check your campaign.",
          completed: false,
          formWidget: CampaignForm()),
    ]);
