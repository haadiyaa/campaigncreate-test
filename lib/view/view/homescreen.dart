import 'package:campaign_creation_test/view/view/homedesktop.dart';
import 'package:campaign_creation_test/view/view/homemobile.dart';
import 'package:campaign_creation_test/view/view/hometablet.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 229, 229, 229),
      body: LayoutBuilder(
        builder: (context, constraints) {
          if (constraints.maxWidth < 770) {
            return const HomeMobile();
          } else if (constraints.maxWidth < 1200) {
            return const HomeTablet();
          } else {
            return const HomeDesktop();
          }
        },
      ),
    );
  }
}
