import 'package:alatoo/config/app_colors.dart';
import 'package:alatoo/config/app_text_style.dart';
import 'package:alatoo/model/tourists_model.dart';
import 'package:alatoo/widgets/text_form_widger.dart';
import 'package:flutter/material.dart';

class TuoristCardWidget extends StatefulWidget {
  final TouristsEntity touristEntity;
  final String title;

  const TuoristCardWidget({
    super.key,
    required this.touristEntity,
    required this.title,
  });

  @override
  State<TuoristCardWidget> createState() => _TuoristCardWidgetState();
}

class _TuoristCardWidgetState extends State<TuoristCardWidget> {
  bool isExpanded = true;

  @override
  Widget build(BuildContext context) {
    return AnimatedContainer(
      duration: const Duration(milliseconds: 800),
      curve: Curves.bounceIn,
      width: double.infinity,
      padding: const EdgeInsets.fromLTRB(16, 13, 16, 13),
      decoration: const BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.all(Radius.circular(12)),
      ),
      child: Column(
        children: [
          GestureDetector(
            onTap: () => setState(() => isExpanded = !isExpanded),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(widget.title, style: AppTextStyles.makadi),
                Container(
                  width: 32,
                  height: 32,
                  decoration: BoxDecoration(
                    color: const Color(0x190D72FF),
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Icon(
                    isExpanded
                        ? Icons.keyboard_arrow_up
                        : Icons.keyboard_arrow_down,
                    color: AppColors.blue,
                  ),
                )
              ],
            ),
          ),
          SizedBox(
            height: isExpanded ? null : 0,
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.start,
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 20),
                  TextFormFieldWidget(
                    controller: widget.touristEntity.firstName,
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Введите имя";
                      }
                      return null;
                    },
                    labelText: 'Имя',
                  ),
                  const SizedBox(height: 8),
                  TextFormFieldWidget(
                    labelText: 'Фамилия',
                    controller: widget.touristEntity.lastName,
                    keyboardType: TextInputType.name,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Введите фамилия";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormFieldWidget(
                    labelText: "Дата рождения",
                    controller: widget.touristEntity.birthDay,
                    keyboardType: TextInputType.datetime,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Введите день рождения";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormFieldWidget(
                    labelText: "Гражданство",
                    controller: widget.touristEntity.citizenship,
                    keyboardType: TextInputType.text,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Введите гражданство";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormFieldWidget(
                    labelText: "Номер загранпаспорта",
                    controller: widget.touristEntity.passportNumber,
                    keyboardType: TextInputType.number,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Введите номер загранпаспорта";
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 8),
                  TextFormFieldWidget(
                    labelText: "Срок действия загранпаспорта",
                    controller: widget.touristEntity.passportValidityPeriod,
                    keyboardType: TextInputType.datetime,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return "Введите срок действия загранпаспорта";
                      }
                      return null;
                    },
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
