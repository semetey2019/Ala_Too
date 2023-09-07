import 'package:alatoo/config/app_text_style.dart';
import 'package:alatoo/config/app_texts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ContainerButtom extends StatelessWidget {
  const ContainerButtom({
    super.key,
    required this.image,
    required this.text,
    required this.color,
    required this.width,
  });
  final SvgPicture image;
  final String text;
  final Color color;
  final Size width;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        image,
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, right: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(text, style: AppTextStyles.information2),
                  const Text(AppTexts.need, style: AppTextStyles.udobno),
                ],
              ),
            ),
          ],
        ),
        const SizedBox(
          width: 90,
        ),
        IconButton(
          onPressed: () {},
          icon: const Icon(Icons.arrow_forward_ios_rounded),
        ),
      ],
    );
  }
}
