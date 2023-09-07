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
    final surnameController = TextEditingController();
    final nameController = TextEditingController();
    final bothdayController = TextEditingController();
    final fromController = TextEditingController();
    final numberPassportController = TextEditingController();
    final passporController = TextEditingController();

    @override
    void dispose() {
      nameController.dispose();
      surnameController.dispose();
      bothdayController.dispose();
      fromController.dispose();
      numberPassportController.dispose();
      passporController.dispose();
      super.dispose();
    }

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
            TextFormWidget(
              title: AppTexts.name,
              controller: nameController,
            ),
            SizedBox(height: 8),
            TextFormWidget(
              title: AppTexts.name1,
              controller: surnameController,
            ),
            const SizedBox(height: 8),
            TextFormWidget(
              title: AppTexts.bouthday,
              controller: bothdayController,
            ),
            const SizedBox(height: 8),
            TextFormWidget(
              title: AppTexts.from,
              controller: fromController,
            ),
            const SizedBox(height: 8),
            TextFormWidget(
              title: AppTexts.number,
              controller: nameController,
            ),
            const SizedBox(height: 8),
            TextFormWidget(
              title: AppTexts.passport,
              controller: passporController,
            ),
          ],
        ),
      ),
    );
  }
}
