// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'package:campaign_creation_test/utils/appcolors.dart';
import 'package:flutter/material.dart';

class CustomOutLinedButton extends StatelessWidget {
  final String label;
  final VoidCallback onTap;
  Color? foregroundColor;
  CustomOutLinedButton({
    super.key,
    required this.label,
    required this.onTap,
    this.foregroundColor,
  });

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      style: OutlinedButton.styleFrom(
          foregroundColor: foregroundColor ?? AppColors.orange,
          backgroundColor: AppColors.white,
          side: BorderSide(
            color: foregroundColor ?? AppColors.orange,
          ),
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10))),
      onPressed: onTap,
      child: Text(label),
    );
  }
}
