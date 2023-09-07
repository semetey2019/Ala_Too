import 'package:alatoo/config/app_texts.dart';
import 'package:alatoo/widgets/text_form_widger.dart';
import 'package:flutter/material.dart';

class FacadeWidget extends StatefulWidget {
  const FacadeWidget({
    super.key,
    required this.isVisible,
    required this.isVisibles,
  });

  final bool isVisible;
  final bool isVisibles;

  @override
  State<FacadeWidget> createState() => _FacadeWidgetState();
}

class _FacadeWidgetState extends State<FacadeWidget> {
  @override
  Widget build(BuildContext context) {
    final surnameController = TextEditingController();
    final nameController = TextEditingController();
    final bothdayController = TextEditingController();
    final fromController = TextEditingController();
    final numberPassportController = TextEditingController();
    final passporController = TextEditingController();
    final _formKey = GlobalKey<FormState>();

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

    return Visibility(
      visible: widget.isVisible,
      child: Container(
        width: 375,
        height: 400,
        decoration: ShapeDecoration(
          color: Colors.white,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 16, right: 16),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextFormWidget(
                  title: AppTexts.name,
                  controller: nameController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormWidget(
                  title: AppTexts.name1,
                  controller: surnameController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormWidget(
                  title: AppTexts.bouthday,
                  controller: bothdayController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormWidget(
                  title: AppTexts.from,
                  controller: fromController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormWidget(
                  title: AppTexts.number1,
                  controller: numberPassportController,
                ),
                const SizedBox(
                  height: 10,
                ),
                TextFormWidget(
                  title: AppTexts.passport,
                  controller: passporController,
                ),
                const SizedBox(
                  height: 10,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
