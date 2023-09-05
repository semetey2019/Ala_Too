import 'package:alatoo/config/app_text_style.dart';
import 'package:alatoo/config/app_texts.dart';
import 'package:alatoo/widgets/text_form_widger.dart';
import 'package:flutter/material.dart';

class TouristCard extends StatefulWidget {
  const TouristCard({super.key, required this.text});
  final String text;
  @override
  State<TouristCard> createState() => _TouristCardState();
}

class _TouristCardState extends State<TouristCard> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: Colors.white,
      ),
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, right: 16),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Text(
                  widget.text,
                  style: AppTextStyles.makadi,
                ),
                const SizedBox(
                  height: 100,
                ),
                InkWell(
                  onTap: () {
                    setState(() {});
                  },
                  child: Container(
                    width: 32,
                    height: 32,
                    decoration: ShapeDecoration(
                      color: const Color(0x190D72FF),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(6)),
                    ),
                    child: const Icon(Icons.keyboard_arrow_up),
                  ),
                )
              ],
            ),
            const TextFormWidget(title: AppTexts.name),
            const SizedBox(height: 8),
            const TextFormWidget(title: AppTexts.name1),
            const SizedBox(height: 8),
            const TextFormWidget(title: AppTexts.bouthday),
            const SizedBox(height: 8),
            const TextFormWidget(title: AppTexts.from),
            const SizedBox(height: 8),
            const TextFormWidget(title: AppTexts.number),
            const SizedBox(height: 8),
            const TextFormWidget(title: AppTexts.passport),
          ],
        ),
      ),
    );
  }
}
