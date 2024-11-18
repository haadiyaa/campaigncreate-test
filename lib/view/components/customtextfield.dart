import 'package:campaign_creation_test/utils/appcolors.dart';
import 'package:campaign_creation_test/utils/appconstants.dart';
import 'package:campaign_creation_test/utils/apptextstyle.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({
    super.key,
    required this.text,
    required this.head,
    this.validator,
    required this.controller,
    this.keyboardType,
    this.onTap,
    this.onChanged,
  });

  final String text;
  final String head;
  final Function(String)? onChanged;
  final String? Function(String?)? validator;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final void Function()? onTap;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            head,
            style: Apptextstyle.textfieldHead,
          ),
          AppConstants.height5,
          TextFormField(
            onChanged: onChanged,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            textInputAction: TextInputAction.next,
            onTap: onTap,
            keyboardType: keyboardType,
            controller: controller,
            validator: validator,
            decoration: InputDecoration(
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              hintText: text,
              hintStyle: Apptextstyle.hintStitle,
              border: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.greyLight,
                  width: 1,
                ),
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.greyLight,
                  width: 1,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AppColors.orange,
                  width: 1,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
