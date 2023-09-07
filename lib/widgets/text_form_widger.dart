import 'package:alatoo/config/app_colors.dart';

import 'package:flutter/material.dart';

class TextFormWidget extends StatelessWidget {
  const TextFormWidget(
      {super.key,
      required this.title,
      required TextEditingController controller});

  final String title;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      style: Theme.of(context).textTheme.bodyMedium?.copyWith(
            height: 1.10,
            fontSize: 17,
          ),
      decoration: InputDecoration(
        contentPadding: const EdgeInsets.symmetric(
          vertical: 8,
          horizontal: 15,
        ),
        labelStyle: Theme.of(context).textTheme.bodyMedium?.copyWith(
              color: AppColors.grey,
              fontSize: 17,
              height: 0.9,
            ),
        labelText: title,
        filled: true,
        fillColor: AppColors.grey2,
        border: UnderlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: BorderSide.none,
        ),
        errorBorder: OutlineInputBorder(
          borderRadius: BorderRadius.circular(10),
          borderSide: const BorderSide(color: Colors.red),
        ),
      ),
    );
  }
}
