import 'package:alatoo/config/app_text_style.dart';
import 'package:alatoo/config/app_texts.dart';
import 'package:alatoo/widgets/custom_buttom.dart';
import 'package:flutter/material.dart';

class PaymentPage extends StatefulWidget {
  const PaymentPage({super.key});

  @override
  State<PaymentPage> createState() => _PaymentPageState();
}

class _PaymentPageState extends State<PaymentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Column(children: [
        Row(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 20, top: 50),
              child: IconButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                icon: const Icon(Icons.arrow_back_ios),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(left: 60, top: 50),
              child: Text(AppTexts.zakaz, style: AppTextStyles.makadi),
            ),
          ],
        ),
        const SizedBox(height: 147),
        Container(
          width: 94,
          height: 94,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(1000),
              color: const Color(0xFFF6F6F9)),
          child: Image.asset(
            "assets/party.png",
            height: 188,
            width: 247,
          ),
        ),
        const SizedBox(height: 60),
        const Text(AppTexts.zakazPrinit, style: AppTextStyles.makadi),
        const SizedBox(height: 20),
        const Center(
          child: Text(
            AppTexts.information1,
            style: AppTextStyles.neobxodimoStyle,
          ),
        ),
        const SizedBox(
          height: 180,
        ),
        MyCustomButton(
            onPressed: () {
              Navigator.of(context).popUntil((route) => route.isFirst);
            },
            buttonText: "Супер!",
            style: AppTextStyles.kvyboru)
      ]),
    );
  }
}
