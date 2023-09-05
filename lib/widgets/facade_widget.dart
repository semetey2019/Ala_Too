import 'package:alatoo/config/app_texts.dart';
import 'package:alatoo/widgets/text_form_widger.dart';
import 'package:flutter/material.dart';

class FacadeWidget extends StatelessWidget {
  const FacadeWidget({
    super.key,
    required this.isVisible,
    required this.isVisibles,
  });

  final bool isVisible;
  final bool isVisibles;

  @override
  Widget build(BuildContext context) {
    return Visibility(
      visible: isVisible,
      child: Container(
        width: 375,
        height: 400,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: const Padding(
          padding: EdgeInsets.only(left: 16, right: 16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextFormWidget(title: AppTexts.name),
              SizedBox(
                height: 10,
              ),
              TextFormWidget(
                title: AppTexts.name1,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormWidget(
                title: AppTexts.bouthday,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormWidget(
                title: AppTexts.from,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormWidget(
                title: AppTexts.number1,
              ),
              SizedBox(
                height: 10,
              ),
              TextFormWidget(
                title: AppTexts.passport,
              ),
              SizedBox(
                height: 10,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
